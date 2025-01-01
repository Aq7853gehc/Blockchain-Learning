// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract StorageFactory {
    
    SimpleStorage[] public  listOfSimpleStorage;

    function createStorageContract() public  {
       SimpleStorage simpleStorage = new SimpleStorage();   
       listOfSimpleStorage.push(simpleStorage);
    }



    function sfStore(uint _simpleStoreIndex,uint _simpleNewStoreVal ) public  {
        SimpleStorage newSimpleStore = listOfSimpleStorage[_simpleStoreIndex];
        newSimpleStore.store(_simpleNewStoreVal);
    }

    function sfGet(uint256 index) public view  returns(uint256){
        SimpleStorage simpleStrg = listOfSimpleStorage[index];
        return simpleStrg.retrive();
    }
}