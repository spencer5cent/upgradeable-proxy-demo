// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import "openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract CounterV1 is Initializable, UUPSUpgradeable, OwnableUpgradeable {

    uint256 public count;

    function initialize() public initializer {
        __Ownable_init(msg.sender);
        count = 0;
    }

    function increment() public {
        count += 1;
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyOwner
    {}
}
