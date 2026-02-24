// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/CounterTransparent.sol";
import "openzeppelin-contracts/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract DeployTransparent is Script {
    function run() external {
        vm.startBroadcast();

        CounterTransparent implementation = new CounterTransparent();

        bytes memory initData =
            abi.encodeCall(CounterTransparent.initialize, ());

        TransparentUpgradeableProxy proxy =
            new TransparentUpgradeableProxy(
                address(implementation),
                msg.sender, // admin
                initData
            );

        vm.stopBroadcast();
    }
}
