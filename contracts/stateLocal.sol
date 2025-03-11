// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract demo{
    int stVar = 10;

    function returnStateVariable() public view returns(int){
        return stVar;
    }

    function returnLocalVariable() public pure returns(int){
        int locVar = 20;
        return locVar;
    }
}