# Guide to upgrade Aurad to version v0.9.3

## Get aurad v0.9.3

You can download prebuilt binary or build it yourself
### Download release binary

- Download aurad
```
wget https://github.com/aura-nw/aura/releases/download/v0.9.3/aurad
chmod +x aurad
```
- Verify version checksum
```
aurad verion
# returns v0.9.3

sha256sum aurad
# returns f4ec5032b729a42a04b1f288353b222ab98e971affe9fa264a5144880dc0e6c5
```

### Build from source
- Clone the source code with specific branch

```
git clone --branch v0.9.3 https://github.com/aura-nw/aura
```

- Build aurad:
```
cd aura
make build

# Verify the version
./build/aurad version
# returns v0.9.3
```
## Upgrade

There are 2 ways to upgrade aurad: manually and automatically

### Manually upgrade after network halts

Aura mainnet will halt after reaches block **7,810,560**, estimated at **August 20th 2024, 13:00 UTC**.

After that, follow steps bellow to upgrade:
- Stop aurad service
- Replace the current aurad with the new one
- Start the aurad service

### Automatic upgrade with cosmovisor
- Set up cosmovisor: https://docs.aura.network/validator/setting-up-cosmovisor
- Make an upgrade folder:
```
mkdir -p $DAEMON_HOME/cosmovisor/upgrades/v0.9.3/bin
```
- Copy the aurad v0.9.3 to the `bin` folder
```
cp ./build/aurad $DAEMON_HOME/cosmovisor/upgrades/v0.9.3/bin
```

Cosmovisor will automatically replace the `aurad` when the network reaches block **7,810,560**.