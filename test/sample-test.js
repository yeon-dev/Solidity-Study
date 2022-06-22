const { expect } = require("chai");
const { ethers } = require("hardhat");
// const { describe } = require("yargs");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!");
    await greeter.deployed();

    expect(await greeter.greet()).to.equal("Hello, world!");

    const setGreetingTx = await greeter.setGreeting("Hola, mundo!");
    const blockNumber = await greeter.getBlockNumber();

    // wait until the transaction is mined
    await setGreetingTx.wait();

    console.log(blockNumber);
    expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});

describe("BasicIterator", function () {
  it("Test BasicIterator", async function() {
    const BasicIterator = await ethers.getContractFactory("BasicIterator");
    const basicIterator = await BasicIterator.deploy();
    await basicIterator.deployed();

    const result = await basicIterator.getSum();
    console.log(result);
  });
});

describe("CreatorBalanceChecker", function () {
  it("Test CreatorBalanceChecker", async function() {
    const CreatorBalanceChecker = await ethers.getContractFactory("CreatorBalanceChecker");
    const createbalancechecker = await CreatorBalanceChecker.deploy();

    await createbalancechecker.deployed();
    const result = await createbalancechecker.getCreatorBalance();
    const result_dot = await createbalancechecker.getCreatorDotBalance();

    console.log(result);
    console.log(result_dot);
  });
});