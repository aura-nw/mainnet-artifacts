#! /bin/bash

CHAINID="${CHAIN_ID:-aura_6322-2}"
CHAINDIR="$HOME/.aura"
GENESIS="aura_6322-2-genesis.json"
TMP_GENESIS="tmp_genesis.json"
GENESIS_TIME="2024-05-31T13:00:00Z"

EVM_DENOM='aaura'
COSMOS_DENOM='uaura'

evm_config='{"accounts":[],"params":{"evm_denom":"aaura","enable_create":true,"enable_call":true,"extra_eips":["3855"],"chain_config":{"homestead_block":"0","dao_fork_block":"0","dao_fork_support":true,"eip150_block":"0","eip150_hash":"0x0000000000000000000000000000000000000000000000000000000000000000","eip155_block":"0","eip158_block":"0","byzantium_block":"0","constantinople_block":"0","petersburg_block":"0","istanbul_block":"0","muir_glacier_block":"0","berlin_block":"0","london_block":"0","arrow_glacier_block":"0","gray_glacier_block":"0","merge_netsplit_block":"0","shanghai_block":"0","cancun_block":"0"},"allow_unprotected_txs":false,"active_precompiles":["0x0000000000000000000000000000000000000400","0x0000000000000000000000000000000000000800","0x0000000000000000000000000000000000000801"],"evm_channels":[]}}'
erc20_config='{"params":{"enable_erc20":true,"enable_evm_hook":true},"token_pairs":[]}'
feemarket_config='{"params":{"no_base_fee":false,"base_fee_change_denominator":8,"elasticity_multiplier":2,"enable_height":"0","base_fee":"1000000000","min_gas_price":"0.000000000000000000","min_gas_multiplier":"0.500000000000000000"},"block_gas":"0"}'
evmutil_config='{"accounts":[],"params":{}}'

# validate dependencies are installed
command -v jq >/dev/null 2>&1 || {
  echo >&2 "jq not installed. More info: https://stedolan.github.io/jq/download/"
  exit 1
}

# used to exit on first error (any non-zero exit code)
set -e

jq --arg chainid "$CHAINID" '.chain_id=$chainid' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
jq --arg genesistime "$GENESIS_TIME" '.genesis_time=$genesistime' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
jq --argjson evm_config "$evm_config" '.app_state.evm=$evm_config' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
jq --argjson erc20_config "$erc20_config" '.app_state.erc20=$erc20_config' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
jq --argjson feemarket_config "$feemarket_config" '.app_state.feemarket=$feemarket_config' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
jq --argjson evmutil "$evmutil_config" '.app_state.evmutil=$evmutil' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"
