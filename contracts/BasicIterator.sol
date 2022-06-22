//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract BasicIterator {
    address creator;
    uint8[10] integers;

    constructor() {
        creator = msg.sender;
        uint8 x = 0;
        console.log(x);
        while (x < integers.length) {
            integers[x] = x;
            x++;
        }
    }

    function getSum() public view returns (uint) {
        uint8 sum = 0;
        uint8 x = 0;

        while (x < integers.length) {
            sum = sum + integers[x];
            x++;
        }
        return sum;
    }
}