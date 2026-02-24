// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/CounterV1.sol";
import "openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract DeployUUPS is Script {
    function run() external {
        vm.startBroadcast();

        CounterV1 impl = new CounterV1();

        bytes memory data = abi.encodeWithSelector(
            CounterV1.initialize.selector
        );

        ERC1967Proxy proxy = new ERC1967Proxy(
            address(impl),
            data
        );

        vm.stopBroadcast();
    }
}
