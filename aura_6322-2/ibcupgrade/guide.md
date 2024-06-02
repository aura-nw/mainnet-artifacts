# Guide to upgrade Aurad with upgrade name: ibcupgrade

## Get aurad v0.8.3

### Build from source
- Clone the source code with specific branch

```
git clone --branch v0.8.3 https://github.com/aura-nw/aura
```

- Build aurad:
```
cd aura
make build

# Verify the version
./build/aurad version
# returns v0.8.3
```
## Upgrade

There are 2 ways to upgrade aurad: manually and automatically

### Manually upgrade after network halts

Euphoria network will halt after reaches block **6,644,150**, estimated at **Jun 3rd 2024, 18:00 UTC**.

After that, follow steps bellow to upgrade:
- Stop aurad service
- Replace the current aurad with the new one
- Start the aurad service

### Automatic upgrade with cosmovisor
- Set up cosmovisor: https://docs.aura.network/validator/setting-up-cosmovisor
- Make an upgrade folder:
```
mkdir -p $DAEMON_HOME/cosmovisor/upgrades/ibcupgrade/bin
```
- Copy the aurad v0.8.3 to the `bin` folder
```
cp ./build/aurad $DAEMON_HOME/cosmovisor/upgrades/ibcupgrade/bin
```

Cosmovisor will automatically replace the `aurad` when the network reaches block **6,644,150**.

**NOTE**: auto download will not work with this upgrade