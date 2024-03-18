// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    mapping(string => uint256) public  nameToAge;
    struct People {
        string name;
        uint256 age;
    }
    People[] public users;
    function addUsers(string memory _name , uint256 _age) public {
        users.push(People({name : _name , age :  _age}));
        nameToAge[_name] = _age;
    }

}
