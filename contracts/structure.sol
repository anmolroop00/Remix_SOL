// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract demo{
    struct USER{
        uint256 id;
        string name;
    }

    USER[] public users;
    uint256 public counter=0;

    function insert(string memory _name) public{
        users.push(USER(counter,_name));
        counter++;
    }

    function read(uint256 _index) public view returns(uint, string memory){
        
    }

}