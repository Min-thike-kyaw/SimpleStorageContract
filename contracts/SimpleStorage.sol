// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract SimpleStorage {
    uint256 favoriteNumber;

    mapping (string => uint256) public nameToFavoriteNumber;

    struct People{
        string name;
        uint256 favoriteNumber;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public  {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public  view returns (uint256) {
        return favoriteNumber;
    }

    function add(string memory _name, uint256 _favoriteNumber) public  {
        people.push(People(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

