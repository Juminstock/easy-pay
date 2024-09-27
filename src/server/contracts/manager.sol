// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Manager is Ownable {

    constructor(address initialOwner) Ownable(initialOwner) {}

    modifier validAmount(uint _amount) {
        require(_amount <= address(this).balance, "Insufficient balance in contract");
        _;
    }

    function makeWithdraw(uint _amount) external onlyOwner() validAmount(_amount) {
        address payable _owner = payable(owner());
        _owner.transfer(address(this).balance);
    }
}