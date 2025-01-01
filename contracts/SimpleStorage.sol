// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    uint256 favNumber;

    function store(uint256 _favNum) public virtual {
        favNumber = _favNum;
    }

    function retrive() public view returns (uint256) {
        return favNumber;
    }

    struct Person {
        string naem;
        uint256 favnum;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFav;

    function add_person(string memory _name, uint256 _favnum) public {
        listOfPeople.push(Person(_name, _favnum));
        nameToFav[_name] = _favnum;
    }
}
