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
        return (users[_index].id, users[_index].name);
    }

    function find(uint256 _index) public view returns (string memory){
        require(_index<counter,"User does not exist!");
        return(users[_index].name);
    }

}