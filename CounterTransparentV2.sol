// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CounterTransparent.sol";

contract CounterTransparentV2 is CounterTransparent {

    function double() public {
        count = count * 2;
    }
}
