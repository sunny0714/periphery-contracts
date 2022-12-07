# Forge Template

## Deployment

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV1.sol:ContractV1 --constructor-args "0xAddress1" "0xAddress2"
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV1.sol:ContractV1 --constructor-args-path contractV1-args
```

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV2.sol:ContractV2 --constructor-args '(0xAddress1)'
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV2.sol:ContractV2 --constructor-args-path ContractV2-args
```

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV3.sol:ContractV3 --constructor-args '(0xAddress1,0xAddress2)'
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV3.sol:ContractV3 --constructor-args-path ContractV3-args
```
