// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Script.sol";
import {Gibway} from "src/Gibway.sol";

contract DeployGibway is Script {
    Gibway gibway;

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        gibway = new Gibway();
        vm.stopBroadcast();
    }
}
