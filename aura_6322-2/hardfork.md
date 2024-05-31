# Guide to launch aura_6322-2

We are forking `aura_6322-2` from `xstaxy-1` at block height **6,597,194**.

These are processes need to be done for this upgrade.

## Relayer

Since updating chain-id would break IBC client states, we need to perform the upgrade for client on every counterparty chains.

Relayers **MUST RUN** this command before the upgrade block **6,597,194**

```
hermes upgrade client --host-chain <<chain-id>> --client <<client-id>> --upgrade-height 6597194
```
List of IBC counterparties:
| chain-id  | client  | Relayer will execute|
|-----------|---------|---------|
|axelar-dojo-1     |07-tendermint-152  | Crosnest
|cosmoshub-4  |07-tendermint-1158 | Crosnest
|nois-1      |07-tendermint-4    |  |
|kava_2222-10       |07-tendermint-133  | |
|noble-1      |07-tendermint-66   | |
|osmosis-1  | 07-tendermint-3054| StakeTown
|stargaze-1 | 07-tendermint-339 | |

Example: Update Nois client 
```
hermes upgrade client --host-chain nois-1 --client 07-tendermint-4 --upgrade-height 6597194
```
This command will check consecutively until Aura chain reachs the upgrade block and halts, then submit an upgrade ibc client transaction to Nois chain.


## Validators and Full nodes

### Before Upgrade
- Disable state sync config in ```config.toml```
```
sed -i -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1false|" $HOME/.aura/config/config.toml
```
- Check your timeout setting for the systemd service (skip if you not set it). This upgrade will take about 10~15 minutes to start up.

### After Aura chain halts, follow below instructions: 

1. Stop aurad service
```
systemctl stop <<aurad service>>
```
2. Build new aurad version
```
git clone --branch v0.8.2 https://github.com/aura-nw/aura
cd aura
make build

# Verify the version
./build/aurad version --long
# commit: f904836400b0fb2bedccf6283f5c0b720d8aa932
# cosmos_sdk_version: v0.47.8
# version: v0.8.2
```
3. Remove aurad old version and replace the new one
```
mv ./build/aurad $(which aurad)
```
4. **BACK UP YOUR PRIVATE KEYS**
```
$HOME/.aura/config/priv_validator_key.json
```

5. Remove previous data
```
aurad tendermint unsafe-reset-all --home=$HOME/.aura --keep-addr-book
rm -r $HOME/.aura/wasm
```
6. Download new genesis file
```
wget <<LINK WILL BE UPLOADED WHEN CHAIN HALTS>>
tar -xzvf aura_6322-2-genesis.tar.gz
mv aura_6322-2-genesis.json $HOME/.aura/config/genesis.json

# Verify genesis info
cat $HOME/.aura/config/genesis.json | jq '"Genesis Time: " + .genesis_time + " — Chain ID: " + .chain_id'
# this should return
# "Genesis Time: 2024-05-31T13:00:00Z — Chain ID: aura_6322-2"

# Verify sorted shasum
jq -S -c -M '' $HOME/.aura/config/genesis.json | sha256sum
# this should return
# TBD  -
```
7. Start aurad service
```
systemctl start <<aurad service>>
```

### Cosmovisor users

If you are using Cosmovisor to run your node, you can let Cosmovisor replace **aurad** bin file automatically.

Setup **BEFORE** chain halts:
1. Build **aurad v0.8.2** 
2. Prepare upgrade for Cosmovisor
```
mkdir -p $HOME/.aura/cosmovisor/upgrades/evmhardfork/bin
cp ./build/aurad $HOME/.aura/cosmovisor/upgrades/evmhardfork/bin
```

Cosmovisor will start **FAILED** since it does not contain upgrade handler.

After that, **STOP** cosmovisor service and follow above instruction from **step 4**.