// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    uint favNumber;
    function store(uint _favNum) public {
        favNumber = _favNum;
    }

    function retrive() public  view  returns(uint) {
        return  favNumber;
    }

    struct Person {
        string naem;
        uint favnum;
    }

    Person[] public  listOfPeople;

    mapping (string=>uint) public  nameToFav;

    function add_person(string memory _name , uint _favnum) public  {
        listOfPeople.push(Person(_name,_favnum));
        nameToFav[_name] = _favnum;
    }
}
