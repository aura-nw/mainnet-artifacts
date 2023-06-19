# Guide to upgrade Aurad to version v0.4.5

## Prerequisite
- To improve the stability of network, please use **go1.19** to build **aurad**.

## Get aurad v0.4.5

- Clone the source code with specific branch

```
git clone --branch aura_v0.4.5 https://github.com/aura-nw/aura
```

- Build aurad:
```
cd aura
make build

# Verify the version
./build/aurad version
# returns aura_v0.4.5
```
## Upgrade

**IMPORTANT NOTE**: This upgrade contains security patch for Cosmwasm module, which requires removing cache after upgrade. Therefore the upgrade should be performed manually.

## Manually upgrade after network halts

Xstaxy network will halt after reaches block **1,292,226** ~ **Jun 12th, 01:00 PM UTC**.

After that, follow steps bellow to upgrade:
- Stop aurad service
- Replace the current aurad with the new one
- Remove wasm cache folder
```
rm -r <aurad node home>/wasm/wasm/cache/
# replace with the location you setup aurad
```
- Start the aurad service