// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newFavNumber) public override {
        favNumber = _newFavNumber + 5;
    }
}
