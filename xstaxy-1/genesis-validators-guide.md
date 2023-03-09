# Setting up a Genesis Aura Validator

Below are the instructions to generate your genesis transaction.

## Generate genesis transaction (pre-launch only)

1. Download the lastest **Aura** release from [aurad repo](https://github.com/aura-nw/aura) and run `make` to build the source.
   Or clone source code from the repo
   ```bash
   git clone --branch Aura_v0.4.3 https://github.com/aura-nw/aura
   cd aura
   make
   ```
   
2. Initialize the  directories and create the local genesis file with the correct
   chain-id

   ```bash
   aurad config chain-id xstaxy-1
   aurad init <MONIKER-NAME> --chain-id xstaxy-1
   ```

3. Create a local key pair for creating validator

   ```bash
   aurad keys add <key-name> --keyring-backend os
   ```

4. Download the pre-genesis file:

   ```bash
   curl -s https://raw.githubusercontent.com/aura-nw/mainnet-artifacts/main/xstaxy-1/pre-genesis.json >~/.aura/config/genesis.json
   ```

5. Create the gentx, replace `<key-name>`:

   The number of bonded tokens for each validator must be corresponed to our announcement [**HERE**](https://docs.google.com/spreadsheets/d/1IX-sumSB6Jclu407Y0TwKJYbexheTIJT7oVXxCIgEFY/edit?usp=sharing)
   
   **NOTE**: 1aura = 10**6 uaura
   
   ```bash
   aurad add-genesis-account <key-name> 100000000uaura --keyring-backend os
   aurad gentx <key-name> 100000000uaura [flags] --keyring-backend os --chain-id xstaxy-1 --yes
   ```
   
   Flags:
   ```
   --commission-rate                   The initial commission rate percentage (Minimum 5%)
   --commission-max-rate               The maximum commission rate percentage (Permanent once set)
   --commission-max-change-rate        The maximum commission change rate percentage (per day)(Permanent once set)
   --min-self-delegation               The minimum self delegation required on the validator
   --moniker                           The validator's moniker
   --details                           The validator's details
   --website                           The validator's website
   --security-contact                  The validators email address
   --identity                          The validators keybase.io pgp id
   ```
   Example:
   ```bash
   aurad gentx KEY-NAME 100000000uaura \
   --commission-rate 0.05 \
   --commission-max-rate 0.1 \
   --commission-max-change-rate 0.01 \
   --min-self-delegation 1 \
   --moniker "YOUR VALIDATOR NAME" \
   --details "YOUR VALIDATOR DETAILS" \
   --website "https://YOURWEBSITE.COM" \
   --security-contact="YOUR@EMAIL.COM" \
   --identity "YOUR KEYBASE.IO PGP ID" \
   --from KEY-NAME \
   --chain-id xstaxy-1 \
   --keyring-backend os \
   --yes 
   ```

   If all goes well, you will see a message similar to the following:

   ```bash
   Genesis transaction written to "/home/[user]/.aura/config/gentx/gentx-******.json"
   ```

## Submit gentx
**NOTE**: Deadline for the submission is **March 16, 2023 at 15:00 UTC+7**

1. Fork this repository 

2. Upload your gentx with format and put it in *gentxs* directory:
   
   ```
   gentx-<validator-moniker>.json
   ```

   Example:
   ```
   gentx-auranode.json
   ```

3. Create a pull request to our main branch

    Sample PR: [**Link**](https://github.com/aura-nw/mainnet-artifacts/pull/1)

## Setup your validator with finalized genesis

The Chain Genesis Time is 13:00 UTC on March 20, 2023.

The instructions will be given later.
