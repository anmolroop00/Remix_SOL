// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract demo{
    uint input;
    function reqCheck(int a) public pure returns(string memory){
        require(a>=0 && a<=255,"Not Within Range");
        return"Within Range";
    }
}