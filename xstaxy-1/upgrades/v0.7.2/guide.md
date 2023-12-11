# Guide to upgrade Aurad to version v0.7.2

## Get aurad v0.7.2

### Build from source
- Clone the source code with specific branch

```
git clone --branch v0.7.2 https://github.com/aura-nw/aura
```

- Build aurad:
```
cd aura
make build

# Verify the version
./build/aurad version
# returns v0.7.2
```
## Upgrade

There are 2 ways to upgrade aurad: manually and automatically

### Manually upgrade after network halts

Euphoria network will halt after reaches block **4,083,908**, estimated at **December 14th 2023, 13:00 UTC**.

After that, follow steps bellow to upgrade:
- Stop aurad service
- Replace the current aurad with the new one
- Start the aurad service

### Automatic upgrade with cosmovisor
- Set up cosmovisor: https://docs.aura.network/validator/setting-up-cosmovisor
- Make an upgrade folder:
```
mkdir -p $DAEMON_HOME/cosmovisor/upgrades/v0.7.2/bin
```
- Copy the aurad v0.7.2 to the `bin` folder
```
cp ./build/aurad $DAEMON_HOME/cosmovisor/upgrades/v0.7.2/bin
```

Cosmovisor will automatically replace the `aurad` when the network reaches block **4,083,908**.
