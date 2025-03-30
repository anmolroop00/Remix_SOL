// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract arrayDem{
    uint[5] public age;

    modifier isLengthValid(uint index) {
        require(index<age.length, "Errored Index out of bound------Please Try AGAIN");
        _;
    }

    function getLength() public view returns(uint){
        return age.length;
    }

    function insertElement(uint index, uint data) external{
        age[index] = data;
    }

    function readElement(uint index) public isLengthValid(index) view returns(uint){
        return age[index];
    }

    function getArray() external view returns(uint[5] memory){
        return age;
    }

}