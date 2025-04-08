//SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

contract demo{
    struct USER {
        uint id;
        string name;
    }
    USER[] public users;
    uint public counter = 1;
    function insert(string memory _name) public {
        users.push(USER(counter, _name));
        counter++;
    }
    function read(uint _id) public view returns (uint, string memory) {
        for (uint i = 0; i < users.length; i++) {
            if (users[i].id == _id) {
                return (users[i].id, users[i].name);
            }
        }
        revert("User does not exist!");
    }
    function find(uint _id) public view returns (bool) {
        for (uint i = 0; i < users.length; i++) {
            if (users[i].id == _id) {
                return true;
            }
        }
        revert("User does not exist!");
    }
}