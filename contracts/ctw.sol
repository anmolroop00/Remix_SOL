//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract demo{
    function concatenate(string memory _string1, string memory _string2) public pure returns(string memory){
        return string(abi.encodePacked(_string1,_string2));
    }
}