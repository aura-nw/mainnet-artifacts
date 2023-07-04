# Aura Network Foundation Delegation Round 2

This document presents the Aura Network Foundation Delegation Program round 2. If you have good suggestions, there are several channels where we are online almost all the time:

- Aura Network [Discord](https://docs.aura.network/validator/running-a-fullnode): either tag us on the main or dm @eledra or @kienvc.
- Twitter: [@EledraNguyen](https://twitter.com/EledraNguyen)
- If you have access to the shared version of the document on Google docs, please just comment on it.

The proposed list of delegation for round 2 is [here](https://docs.google.com/spreadsheets/d/1oCaf5vKvFV-AzoFyVxHCsJWRTmdqHiU-Cl38zgnesHE/edit?usp=sharing)

## 1. Context

It has been 3 months since the first official round of Aura Foundation delegation (30 Mar 2023). During this time, 2 major upgrades were performed through governing [vote #2](https://aurascan.io/votings/2) and governing [vote #4](https://aurascan.io/votings/4). There were also a lot of constructive discussion on Aura Discord on governing and validation parameters. While it was unfortunate that these discussions were lost due to the Discord compromised incident, we acknowledged all feedbacks and ideas proposed by validators and we are taking all of these suggestions into account for the second round of Foundation Delegation from Aura Network.

## 2. Current Network Status

We present the current delegation status of the network in this [sheet](https://docs.google.com/spreadsheets/d/1oCaf5vKvFV-AzoFyVxHCsJWRTmdqHiU-Cl38zgnesHE/edit?usp=sharing)

Apart from delegation from the foundation, there are delegation from retail token holders as well as strategic partners who participate in private token sales earlier. This makes the delegation status become skewed too much so that we can see the top 4 validators take more than 30% of the total bonded token amount. Thus, if these 4 validator nodes go down at the same time, the network will be halted.

We also observe the consequence of such situation in the last network upgrade where there were several validators who did not fully follow the upgrade instruction or not being online during the upgrade time so that the network was halted for several consecutive hours. You can find the report for uptime during the first 2 hours of the upgrade also in the delegation sheet.

Please keep in mind that this report is ONLY for the purpose of analyzing the last network upgrade so that we can have better preparation for future releases. This report is not for the purpose of blaming any invidual or comparing validators in term of skill or contribution. However, it will serve as a metric towards the foundation delegation amount of this delegation round.

## 3. Round 2 Foundation Delegation Criteria

The proposed list of delegation for round 2 is [here](https://docs.google.com/spreadsheets/d/1oCaf5vKvFV-AzoFyVxHCsJWRTmdqHiU-Cl38zgnesHE/edit?usp=sharing)

There are several changes in this delegation round:

- Increase the total amount of foundation delegation: the current network bonding rate is too low (10%) leading to too high APR for stakers (~70%). This cause heavy impact to the Aura token price as well as disincentivize user to use Aura token for other purpose (trading/NFT buy/liqudity providing). With the coming launch of HaloTrade, the first native DEX on Aura, we want to significantly reduce the staking APR to ~20% only so that users are encouraged to participate in other DeFi activities.
- We will make another governing prop to reduce the inflation rate from 8% to 5% to further reduce the token emission to the network.
- There are 3 tiers of delegation:
  - Big delegation: 2M Aura for validators demonstrate their great engagement with the Aura Network as well as maintained near perfect uptime even during major network upgrades. Validators must set their commission between 3% to 5% to maintain this delegation.
  - Medium delegation: 500K Aura for validators who show their great engagement with the project but did not have as high uptime as the previous tier. Validators must set their commission level between 1% and 8% to maintain this delegation.
  - Small delegation: Round-1 delegated validators who still maintain a good uptime but failed to keep up with the network upgrade. Validators must set their commission between 0.5% and 10% to maintain this delegation.
- Introduce a penaltized parameter for Validator who does not maintain good uptime during major network upgrade:
  - If a validator belongs to the big delegation tier but during the last network upgrade, that validator did not maintain more than 80% uptime, a penalty value will be introduced towards the validator delegation amount.
  - The formular for the penalty is: 2M \* (80 - uptime) / 100, so the less up time you have, the less delegation you receive.
- All rewards to the Staked tokens from the Aura Foundation WILL be moved to the community pool. Aura team WILL not take any rewards from staking.
- At least need more than 10 validators to have 33% accumulated voting power.
- Reducing Euphoria validator set to 15 to save cost. Top 15 validators receiving bigest foundation delegation will have to run Euphoria nodes and we will do a rotation in the next few months.

## 4. Dispute & suggestion

Currently there is significant effort has to spent to review and maintain a good delegation program. We encourage every validators to contribute and propose new delegation criterias, frameworks to improve our foundation delegation program. If there is any disagreement on the current delegation decision, we are also open to discuss.

## 5. Maintaining delegations

For transparency purposes, validators receiving the delegation are required to public the pledge based on their contribution commitment at [Github repository](https://github.com/aura-nw/mainnet-artifacts/tree/main/Foundation-delegation-program). During the delegation program, validators have to regularly update their progress to the repository.

Aura team and advisors will base on that to reevaluate the candidates every 3 months. Depending on their status, we will decide to maintain or terminate the delegation.

**IMPORTANT: Please make sure you update your pledge and appropriate commission rate to maintain your delegation**

**Deadline for updating pledge and commission rate: Thursday, July 6, 2023 00:00 UTC**

## 6. Euphoria testnet maintainance

If a validator belongs to the top 15 of the active set in Xstaxy, we would request this validator to maintain their Euphoria testnet node. Other validators are not required and should turn off their node to save cost.

## 7. Terms and Conditions

- Every validator is welcome to apply for the Genesis slot as well as the Foundation Delegation Program.
- The Aura Network team reserves the right to change these terms and conditions at any time without prior notice.
- All final decisions of the program belong to the Aura Network team.
