# Forge Template

## Deployment

### ContractV1

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV1.sol:ContractV1 --constructor-args "0xAddress1" "0xAddress2"
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV1.sol:ContractV1 --constructor-args-path contractV1-args
```

### ContractV2

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV2.sol:ContractV2 --constructor-args '(0xAddress1)'
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV2.sol:ContractV2 --constructor-args-path ContractV2-args
```

### ContractV3

```solidity
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV3.sol:ContractV3 --constructor-args '(0xAddress1,0xAddress2)'
forge create --rpc-url https://rpc.ankr.com/eth_goerli --private-key YOUR_PRIVATE_KEY src/ContractV3.sol:ContractV3 --constructor-args-path ContractV3-args
```

### ContractV4

```solidity
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV4.sol:ContractV4 --constructor-args '(0xAddress1,0xAddress2)' '(0xAddress1,0xAddress2)'
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV4.sol:ContractV4 --constructor-args-path ContractV4-args
```

### ContractV5

```solidity
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV5.sol:ContractV5 --constructor-args '(0x9F79941335e54A11eCD13cedf58375657FdA97A1,0x9F79941335e54A11eCD13cedf58375657FdA97A1)' '(0x9F79941335e54A11eCD13cedf58375657FdA97A1,1,[0xfbff3a41,0xc3ffb565,0xeec5e10a])'
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV5.sol:ContractV5 --constructor-args-path ContractV5-args
```

### ContractV6

```solidity
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV6.sol:ContractV6 --constructor-args '(0x9F79941335e54A11eCD13cedf58375657FdA97A1,0x9F79941335e54A11eCD13cedf58375657FdA97A1)' '[(0x9F79941335e54A11eCD13cedf58375657FdA97A1,1,[0xfbff3a41,0xc3ffb565,0xeec5e10a])','(0x9F79941335e54A11eCD13cedf58375657FdA97A1,1,[0xfbff3a41,0xc3ffb565,0xeec5e10a])]'
forge create --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/ContractV6.sol:ContractV6 --constructor-args-path ContractV6-args
```
