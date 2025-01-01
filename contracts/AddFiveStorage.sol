// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";


contract AddFiveStorage is SimpleStorage {
    function sayHello() public  pure  returns(string memory){
        return "hello";
    }
}