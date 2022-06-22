//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    address creator;
    string greeting;

    constructor(string memory _greeting) public {
        creator = msg.sender;
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }

    function setGreeting(string memory _newgreeting) public {
        greeting = _newgreeting;
    }
}
