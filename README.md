# Eth-avax-Intermediate-module-3

## General

The 'MyToken' is a Solidity-written Ethereum ERC-20 compliant token smart contract. It offers the fundamental tools necessary to build and administer a unique token on the Ethereum network. The owner of this smart contract has the ability to create new tokens, burn old tokens, and move tokens between addresses.

## Requirements

Ethereum development environment (such as Remix, Truffle, or Hardhat) 
Solidity version 0.8.0 or higher

## Contract Information

### Contract Owner

The Ethereum address that deployed the contract is its `owner`. New tokens can only be created by the contract owner.

### Token Details

- `tokenName`: is a string that represents the token's name.
- `tokenSymbol`: A string that represents the token's symbol.
- `totalSupply`: An unsigned integer that represents the token's entire supply.

### Events

1. `Transfer`: This event is emitted whenever tokens are transferred from one address to another.
    - `from`: The address from which tokens are being transferred.
    - `to`: The address to which tokens are being transferred.
    - `value`: The amount of tokens being transferred.

2. `Burn`: This event is emitted when tokens are burned (destroyed) by an address.
    - `from`: The address from which tokens are being burned.
    - `value`: The amount of tokens being burned.

3. `Mint`: This event is emitted when new tokens are minted and added to an address.
    - `to`: The address to which tokens are being minted.
    - `value`: The amount of tokens being minted.

### Modifiers

- `onlyOwner`: A modifier that restricts access to certain functions only to the contract owner.

## Functions

1. `constructor(string memory _name, string memory _symbol)`

   This function is the constructor of the contract. It initializes the contract owner, token name, and token symbol.

2. `mint(address _to, uint256 _value)`

   Allows the contract owner to mint a specified amount of tokens and add them to the balance of a given address.

3. `burn(uint256 _value)`

   Allows an address to burn (destroy) a specified amount of their own tokens.

4. `transfer(address _to, uint256 _value)`

   Allows an address to transfer a specified amount of tokens to another address.

## Usage

1. Deploy the `MyToken` contract to the Ethereum blockchain.
2. After deployment, the contract owner can use the `mint` function to create new tokens and distribute them to specific addresses.
3. Users can use the `burn` function to destroy their own tokens, reducing the total supply.
4. Users can transfer tokens to other addresses using the `transfer` function.

## Authors
Vaishnav Arora

## License

This smart contract is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
