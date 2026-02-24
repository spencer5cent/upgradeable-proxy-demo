# Upgradeable Smart Contract Security Lab (UUPS vs Transparent Proxy)

This project demonstrates implementation and comparison of two upgradeability patterns in Ethereum smart contracts:

- UUPS (ERC1967)
- Transparent Upgradeable Proxy

## What Was Implemented

- CounterV1 / CounterV2 (UUPS upgrade pattern)
- CounterTransparent / CounterTransparentV2 (Transparent proxy pattern)
- Deployment scripts using Foundry
- Proper initializer usage
- Ownership-based upgrade authorization
- Storage layout preservation across upgrades

## Security Concepts Demonstrated

- Upgrade authorization via _authorizeUpgrade
- Proxy delegation architecture
- Storage layout safety
- Transparent vs UUPS attack surface differences
- Initialization protection using Initializable

Tooling:
- Solidity ^0.8.20
- OpenZeppelin Upgradeable Contracts
- Foundry (Forge + Anvil)

This lab was built to deepen understanding of upgradeable smart contract security and proxy design tradeoffs.
