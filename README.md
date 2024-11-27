# Bitcoin Bridge Smart Contract

## Overview

The Bitcoin Bridge Smart Contract is a sophisticated blockchain solution designed to facilitate seamless token wrapping between Bitcoin and the Stacks blockchain. This contract provides a secure, transparent, and feature-rich mechanism for depositing Bitcoin and receiving wrapped Bitcoin tokens (wBTC).

## Features

### Core Functionality

- **Bitcoin Deposits**: Users can deposit Bitcoin and receive equivalent wrapped Bitcoin tokens
- **Fee Management**: Configurable bridge fee percentage
- **Oracle-Based Validation**: Secure transaction validation through authorized oracles
- **Recipient Whitelisting**: Enhanced security through recipient address validation

### Advanced Security Mechanisms

- Bridge pausability
- Maximum deposit limit
- Transaction duplicate prevention
- Extensive error handling

## Contract Components

### Error Constants

The contract defines comprehensive error constants for various potential failure scenarios:

- Authorization errors
- Invalid amount errors
- Insufficient balance errors
- Bridge paused errors
- Transaction processing errors
- Oracle validation errors

### Key Data Structures

- **Authorized Oracles Map**: Tracks authorized oracle addresses
- **Processed Transactions Map**: Prevents double-spending
- **Recipient Whitelist Map**: Manages approved recipient addresses
- **User Balances Map**: Tracks individual user token balances

## Main Functions

### Deposit Functionality

`deposit-bitcoin(btc-tx-hash, amount, recipient)`

- Validates Bitcoin transaction hash
- Checks deposit amount against maximum limit
- Applies bridge fee
- Mints wrapped Bitcoin tokens
- Tracks total locked Bitcoin

### Oracle and Access Management

- `add-oracle(oracle)`: Add a new authorized oracle
- `remove-oracle(oracle)`: Remove an oracle's authorization
- `add-to-whitelist(recipient)`: Whitelist a recipient address
- `remove-from-whitelist(recipient)`: Remove a recipient from whitelist

### Bridge Administration

- `pause-bridge()`: Pause all bridge operations
- `unpause-bridge()`: Resume bridge operations
- `update-bridge-fee(new-fee)`: Adjust bridge fee percentage
- `update-max-deposit(new-max)`: Modify maximum deposit limit

## Security Considerations

- Owner-only administration functions
- Comprehensive input validation
- Oracle-based transaction verification
- Whitelisting mechanism
- Transaction replay protection

## Read-Only Functions

- `get-total-locked-bitcoin()`: Retrieve total locked Bitcoin
- `get-user-balance(user)`: Check user's token balance
- `is-oracle-authorized(oracle)`: Verify oracle authorization

## Error Handling

The contract uses a robust error handling system with specific error codes:

- `ERR-NOT-AUTHORIZED`: Authentication failure
- `ERR-INVALID-AMOUNT`: Invalid transaction amount
- `ERR-BRIDGE-PAUSED`: Bridge currently paused
- `ERR-TRANSACTION-ALREADY-PROCESSED`: Prevents duplicate transactions

## Usage Example

### Depositing Bitcoin

1. Ensure your recipient address is whitelisted
2. Provide a valid Bitcoin transaction hash
3. Specify the deposit amount
4. Call `deposit-bitcoin` function
5. Receive wrapped Bitcoin tokens minus bridge fee

## Configuration

- Initial bridge fee: 1% (configurable)
- Maximum deposit: 10,000,000 satoshis (configurable)
- Bridge can be paused/resumed by owner

## Potential Improvements

- Implement more sophisticated Oracle validation
- Add multi-signature support for critical functions
- Develop comprehensive withdrawal mechanisms

## Dependencies

- Stacks blockchain
- Authorized Oracle infrastructure
