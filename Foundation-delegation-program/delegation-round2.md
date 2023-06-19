# Aura Network Foundation Delegation Round 2 (DRAFT)

This document provides a draft version of the Aura Network Foundation Delegation Program. If you have good suggestions, there are several channels where we are online almost all the time:

- Aura Network [Discord](https://docs.aura.network/validator/running-a-fullnode): either tag us on the main or dm @eledra or @kienvc.
- Twitter: [@EledraNguyen](https://twitter.com/EledraNguyen)
- If you have access to the shared version of the document on Google docs, please just comment on it.

## 1. Context

It has been 3 months since the first official round of Aura Foundation delegation (30 Mar 2023). During this time, 2 major upgrades were performed through governing [vote #2](https://aurascan.io/votings/2) and governing [vote #4](https://aurascan.io/votings/4). There were also a lot of constructive discussion on Aura Discord on governing and validation parameters. While it was unfortunate that these discussions were lost due to the Discord compromised incident, we acknowledged all feedbacks and ideas proposed by validators and we are taking all of these suggestions into account for the second round of Foundation Delegation from Aura Network.

## 2. Current Network Status

We present the current delegation status of the network in this [sheet](https://docs.google.com/spreadsheets/d/1oCaf5vKvFV-AzoFyVxHCsJWRTmdqHiU-Cl38zgnesHE/edit?usp=sharing)

Apart from delegation from the foundation, there are delegation from retail token holders as well as strategic partners who participate in private token sales earlier. This makes the delegation status become skewed too much so that we can see the top 4 validators take more than 30% of the total bonded token amount. Thus, if these 4 validator nodes go down at the same time, the network will be halted.

We also observe the consequence of such situation in the last network upgrade where there were several validators who did not fully follow the upgrade instruction or not being online during the upgrade time so that the network was halted for several consecutive hours. You can find the report for uptime during the first 2 hours of the upgrade also in the delegation sheet.

Please keep in mind that this report is ONLY for the purpose of analyzing the last network upgrade so that we can have better preparation for future releases. This report is not for the purpose of blaming any invidual or comparing validators in term of skill or contribution. However, it will serve as a metric towards the foundation delegation amount of this delegation round.

## 3. Proposed new Foundation Delegation Criteria

We propose several change in this delegation round:

- Increase the total amount of foundation delegation: the current network bonding rate is too low (10%) leading to too high APR for stakers (~70%). This cause heavy impact to the Aura token price as well as disincentivize user to use Aura token for other purpose (trading/NFT buy/liqudity providing). With the coming launch of HaloTrade, the first native DEX on Aura, we want to significantly reduce the staking APR to ~20% only so that users are encouraged to participate in other DeFi activities.
- Increase the "big" delegation list to 50. Previously we only have 25 validators receiving 1M delegation and the rest receive 100K delegation.
- All rewards to the Staked tokens from the Aura Foundation WILL be moved to the community pool.
- New delegation should further decentralize the network to keep an equal balance. Thus, we expect top 10 validators hold no more than 33% accumulated voting power (now top 4 is 30%)
- New delegation should preserve the order of the current validator set. We believe that the current order of the current set reflect the true interest of retail delegators and partners, we don't want our foundation delegation amount to heavily affect that. So we will try our best to keep the current order of the set.
- Validators getting delegated from the foundation must increase their commission to at least 3% and no more than 8%.
- Reducing Euphoria validator set to 15 to save cost. Top 15 validators receiving bigest foundation delegation will have to run Euphoria nodes and we will do a rotation in the next few months.

The final delegation detail will be published after we get feedbacks from the current validator set.

## 4. Highlighted contribution

For the last 3 months, we observed significant contributions from new validators from the set in term of social contribution, technical support, business development and numerous other initiatives.

Please update your [pledge](https://github.com/aura-nw/mainnet-artifacts/tree/main/Foundation-delegation-program/validator-profiles) to reflect your contribution to Aura Network, we will review it and take it into account to decide your next delegation amount.

## 5. Schedule

- June 19th - Draft publish
- June 26th - Final version
- June 27th - New delegation round
