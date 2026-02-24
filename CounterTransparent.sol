// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import "openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract CounterTransparent is Initializable, OwnableUpgradeable {

    uint256 public count;

    function initialize() public initializer {
        __Ownable_init(msg.sender);
        count = 0;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        require(count > 0, "Cannot go below zero");
        count -= 1;
    }
}
