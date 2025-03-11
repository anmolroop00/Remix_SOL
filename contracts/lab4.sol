// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract demo{
    int stVar;

    function set(int _value) public{
        stVar = _value;
    }

    function get() public view returns(int){
        return stVar;
    }
}