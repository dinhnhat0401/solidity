// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; 

contract SimpleStorage {
    uint256 public favoriteNumber = 0;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber + 1;
        // retrieve
        // retrieve() call view function inside this non-view will case this to consume more gas.
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        // people.push(People(_favoriteNumber: _favoriteNumber, _name: _name));
    }
}
