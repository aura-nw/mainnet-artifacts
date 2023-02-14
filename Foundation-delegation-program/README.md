# Aura Network Foundation Delegation Program

This document provides a draft version of the Aura Network Foundation Delegation Program. If you have good suggestions, there are several channels where we are online almost all the time:

- Aura Network [Discord](https://docs.aura.network/validator/running-a-fullnode): either tag us on the main or dm @eledra or @kienvc.
- Twitter: [@EledraNguyen](https://twitter.com/EledraNguyen)
- If you have access to the shared version of the document on Google docs, please just comment on it.

## Table of Content
[Aura Network Foundation Delegation Program](#aura-network-foundation-delegation-program)
  * [1. Context](#1-context)
  * [2. Goal](#2-goal)
  * [3. Duration](#3-duration)
  * [4. Funding & Rewards](#4-funding-and-rewards)
  * [5. Aura Foundation Validator](#5-aura-foundation-validator)
  * [6. Governing](#6-governing)
  * [7. Initial Delegation Requirements](#7-initial-delegation-requirements)
  * [8. Schedule](#8-schedule)
  * [9. Maintaining delegations](#9-maintaining-delegations)
  * [10. Terms and Conditions](#11-terms-and-conditions)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## 1. Context

We introduce the Aura network **Foundation Delegation Program**. Staking delegation is one of the most important aspects of Aura Network. It is mandatory for the Aura Foundation to cultivate the decentralisation and growth of the network by allocating their funds for delegation appropriately. 

The Aura Network Foundation in this case refers to the Aura Network team who creates the project. As stated in the tokenomic design, the “Team and Advisors” fund contains 200M tokens, cliffed for the first year and linear vesting for 3 years. This is equivalent to 51.6% of the total tokens on Aura mainnet (apart from the ignored ecogrowth and reserve funds). However, while it is locked, these tokens can still be staked to secure the network.

The full calculation can be found [here](https://docs.google.com/spreadsheets/d/1jG9VTPBPHupWWzMcFy9WQkxccmO2AAMwpcQdllpe0UI/edit?usp=sharing)

This document outlines fundamental rules that the Aura Network Foundation uses to allocate this Team fund to delegate to different validators. 

## 2. Goal

As validators earn **_Commission_** from validating blocks, validators who got foundation delegation have significant advantages in comparison to the rest of the validator set. Thus, the delegation program is tailored towards validators who have _**Extra**_ contribution to the Aura Network ecosystem, not only just running validator nodes. This includes contributing to Aura source code, hosting infrastructure, building Aura community, developing applications on Aura or doing general public goods that everyone can benefit from.

The second goal of the program is to ensure network decentralisation so that we can have a more robust network infrastructure as well as governing decision making. 

Finally, to avoid a significant sell pressure from stake rewards that could damage the market, the bonding rate of the network must be tightly controlled to keep inflation rate and annual percentage rate of stakers at a reasonable level.

## 3. Duration
The duration of the Foundation Delegation Program is from the mainnet launching time until 2 weeks before the first unlock day of the Aura team. This is to make sure that the fund used for the delegation program is fully locked for the whole duration. 

For example:
- Mainnet launch date (**example**): December 1st 2022
- Aura team token unlock date: July 28th  2023
- So the Aura Foundation Delegation, in theory, is starting from **December 1st 2022** to **July 14th 2023**. 

After this first delegation program ends, a new delegation program will be designed depending on the past performance and bonding rate of the network.

## 4. Funding and Rewards

The fund used in the Foundation Delegation Program is the “Team & Advisor” part. Details as follow:
- Maximum delegation: 200M $AURA 
- Account for 51.6% of circulating supply in mainnet launch
- Maximum delegation to a validator 19M $Aura (not over 5% of circulating supply) 
- Initial maximum number of validators: 25 (to avoid spreading too much so it is difficult to monitor) except the Aura Foundation node. The actual number of delegation slots might change later depending on the network condition and the consensus of the community.
- Rewards from delegation are collected every month and sent directly to the **_community fund_**, controlled by network governing.

## 5. Aura Foundation Validator
One of the validator nodes automatically qualified for the delegation program is the **Aura Foundation Validator**, which is a **_non-profit_** validator run by the Aura Foundation.

Aura Foundation Validator will take **_100% commission_** from the delegator and all rewards coming from the validator will be directed to the Aura **_community fund_**. 

## 6. Governing
As the team initially controls more than 50% of the circulating supply, under normal circumstances, the owner address of the team token will not participate in governing the network. Instead, the team will present their stance on governing decisions through vote of the Aura Foundation validator, which only has limited voting power.

However, Aura Network is fairly new and requires strong leadership to grow in the first few years. In extreme situations that may require foundation intervention, e.g. bad actors deliberately cause damage to the ecosystem, the Aura Foundation should consult all validators and token holders to react.

## 7. Initial Delegation Requirements
In the beginning, the foundation will provide a maximum 25 slots of delegation. We will perform quarterly review on the performance and contribution of validators to the network to re-evaluate the delegation choice.

Every validator who got foundation delegation must meet the following base requirements:
- Run an Euphoria testnet node after the mainnet launch
- Set commission rate greater than 0% and no greater than 8%
- Commit of uptime of at least 90% throughout the Delegation period
- Commit to participate in network governance at least 2/3 of the total votes throughout the Delegation period. 
- Publicly announced to the Aura Network community on the delegation decision.
- Must not run mainnet validator node on Hetzner or Contabo (backup / testnet nodes or other services are not required)

**Note: the amount of $AURA token delegated to each slot will be finalised after careful consideration depending on the contribution of the selected party to the Aura Network**

### Top Euphoria contributor: 5 slots (Automatically selected)

Euphoria testnet is an important part of the Aura Network ecosystem. The top 5 validators from the IVP that have the highest points from the Master of Nodes will be selected as candidates for the foundation delegation program. As there are 6 top validators from the program, one slot will be taken from the reserved slots.

### Aura ecosystem contributor: 10 slots (Need to register)
This is 10 delegation slots for validators who are committed to contribute directly to the Aura Network project. These validators can contribute to several aspects:

- Software Engineering: Validators who contribute to Aura Network source code, including but not limited to: aurad, pyxis, aurascan, twilight hub … etc or run their own DAPPs on Aura.
- Infrastructure maintenance: Validators who provide RPC API, IBC relayer, public databases, block explorer, wallet that support Aura Network.
Community growing: Validators who continuously grow Aura community by creating valuable contents, hosting events, maintaining local community groups or being  active in participating in the community.
- Business Development: Aura Network values the importance of business development in different regions, especially Southeast Asia countries, Taiwan, Korea, Japan where the majority of Aura BD actions are happening. Business development includes growing business in NFT, exchanges or partnerships with local communities.

### Cosmos ecosystem contributor: 5 slots (Need to register)
Aura Network is built upon Tendermint, Cosmos SDK, IBC, CosmWasm and a lot of other open source softwares in the Cosmos ecosystem. The Aura Network also is working tirelessly to contribute back to the ecosystem through open source applications development.

The Aura Network foundation will provide 5 delegation slots for validators who contribute to the Cosmos ecosystem either in software development or community building.

### Reserved slots: 5 slots
There are 5 more slots to reserve for further delegation in case we have significant contributors to any of the other slots deciding to join Aura Network to validate.

## 8. Schedule
Starting from the mainnet launch, there are several phases for the delegation program.

### Genesis bootstrapping

The genesis validator set is set at 70 validators in which 52 are from the IVP validator set. The remaining slots are reserved to reputable validators who complete the genesis registration form. The initial self-bonding for those validators are as follows:
- Self-bonding funds are taken from the Ecosystem Growth fund. 
- Testnet contributors (IVP candidates): Bonded token = 60 $Aura * Operation days - Amount withdrawn
- Newly invited Validator: 100 $Aura

The initial inflation rate in the genesis block is zero. We will start inflating $Aura at the second round of delegation.

### Initial delegation (right after mainnet)

Right after mainnet launch, previous Aura token holders on BSC will not be able to convert their tokens immediately. Thus, we still want to keep the inflation rate at zero.

During this time, the initial delegation will be performed on the chosen 25 slots. We also will advice vesting token holders from strategic and private sale rounds to delegate equally among different validators to further decentralise the network

### Inflation (1-2 weeks after initial delegation)

This phase starts when Centralised Exchanges (MEXC & BingX) finish their token swap process. Token holders on BSC will be able to withdraw their tokens from these CEX to mainnet and stake.

The current bridge solution between BSC and Aura Mainnet is determined to be through Axelar. However, as Axelar General Message Passing support for Cosmos is still in development, there will be other decentralised solutions to consider but the main method for the inflation phase is through CEX.

The current APR of staking on Cosmos are:

- $ATOM: 18.9%
- $OSMO: 24.26%
- $SCRT: 22.6%

So initially we should target the staking APR around 20% to make sure it is attractive enough for stakers.

### Decentralisation (after 3 months)
After 3 months of the inflation phase, we will re-evaluate the decision and redistribute the delegation amount to more validators depending on their contribution to the network to further decentralise the network. 

## 9. Maintaining delegations
For transparency purposes, validators receiving the delegation are required to public the pledge based on their contribution commitment at [Github repository](https://github.com/aura-nw/mainnet-artifacts/tree/main/Foundation-delegation-program). During the delegation program, validators have to regularly update their progress to the repository.

Aura team and advisors will base on that to reevaluate the candidates every 3 months. Depending on their status, we will decide to maintain or terminate the delegation.

## 10. Terms and Conditions
- Every validator is welcome to apply for the Genesis slot as well as the Foundation Delegation Program.
- The Aura Network team reserves the right to change these terms and conditions at any time without prior notice.
- All final decisions of the program belong to the Aura Network team.


