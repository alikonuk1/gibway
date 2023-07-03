// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/Gibway.sol";
import {DeployGibway} from "script/DeployGibway.s.sol";

contract GibwayTest is Test, DeployGibway {
    
    address deployer;
    address alice;
    address bob;
    address carol;

    uint256 mainnetFork;

    function setUp() public {
        mainnetFork = vm.createSelectFork(vm.rpcUrl("mainnet"));

        deployer = makeAddr("Deployer");
        alice = makeAddr("Alice");
        bob = makeAddr("Bob");
        carol = makeAddr("Carol");

        vm.deal(deployer, 999 ether);
        vm.deal(alice, 999 ether);
        vm.deal(bob, 999 ether);
        vm.deal(carol, 999 ether);

        DeployGibway.run();
    }

    function testIncrement() public {
        gibway.increment();
        assertEq(gibway.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        gibway.setNumber(x);
        assertEq(gibway.number(), x);
    }
}
