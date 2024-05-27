# Guide to launch aura_6322-2

We are forking `aura_6322-2` from `xstaxy-1` at block height **6,597,194**.

These are processes need to be done for this upgrade.

## Relayer

Since updating chain-id would break IBC client states, we need to perform the upgrade for client on every counterparty chains.

Relayers **MUST RUN** this command before the upgrade block **6,597,194**

```
hermes upgrade client --host-chain <<chain-id>> --client <<client-id>> --upgrade-height 6597194
```

Example: Update Nois client 
```
hermes upgrade client --host-chain nois-testnet-005 --client 07-tendermint-46 --upgrade-height 6597194
```
This command will check consecutively until Aura chain reachs the upgrade block and halts, then submit an upgrade ibc client transaction to Nois chain.

## Validators and Full nodes

### Before Upgrade
- Check state sync config is disabled in ```config.toml```
```
[statesync]
enable = false
```
- Check your timeout setting for a systemd service (skip if you not set it). This upgrade will take about 10~15 minutes to start up.

### After Aura chain halts, follow below instructions: 

1. Stop aurad service
```
systemctl stop <<aurad service>>
```
2. Build new aurad version
```
git clone --branch v0.8.1 https://github.com/aura-nw/aura
cd aura
make build
# Verify the version
./build/aurad version
# returns v0.8.1
```
3. Remove aurad old version and replace the new one
4. **BACK UP ALL PRIVATE KEYS**
5. Remove previous state
```
aurad tendermint unsafe-reset-all --home=$HOME/.aura --keep-addr-book
rm -r $HOME/.aura/wasm
```
6. Download new genesis file
```
wget TBD
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

If you are using Cosmovisor to run your node, you can let Cosmovisor replace **aurad** bin file automatically
```
mkdir -p $HOME/.aura/cosmovisor/upgrades/evmhardfork/bin
cp ./build/aurad $HOME/.aura/cosmovisor/upgrades/evmhardfork/bin
```

Cosmovisor will start **FAILED** since it does not contain upgrade handler.

After that, **STOP** cosmovisor service and follow above instruction from **step 4**.