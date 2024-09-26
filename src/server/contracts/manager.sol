// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Manager is Ownable {

    event UserDeposit(address userAccount, uint amount);
    event UserSaving(address userAccount, uint amount);
    event UserInvest(address userAccount, uint amount);

    struct User {
        string nickname;
        uint userId;
    }

    mapping (address => uint) public balances;
}