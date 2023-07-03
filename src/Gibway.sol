// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.19;

/**
 * @title gibway
 * @author gibway (https://github.com/alikonuk1/gibway)
 * @author Ali Konuk - @alikonuk1
 * @dev This is an onchain raffle contract
 * @dev Please reach out to ali@gibway.xyz regarding to this contract
 */
contract Gibway {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
