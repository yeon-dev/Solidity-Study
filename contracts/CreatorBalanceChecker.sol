//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract CreatorBalanceChecker {
    address creator;
    uint creatorbalance;

    constructor() {
        creator = msg.sender;
        creatorbalance = creator.balance;
    }

    function getCreatorBalance() public view returns (uint) {
        return creatorbalance;
    }

    function getCreatorDotBalance() public view returns (uint) {
        return creator.balance;
    }
}