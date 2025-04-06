//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract demo{
    uint256[] public array;

    function insertData(uint256 _value) external{
        array.push(_value);
    }

    function reverseArray() public view returns(uint256[] memory){
        uint length = array.length;
        uint256[] memory tempArray = new uint256[](length);
        for(uint i=0;i<length;i++){
            tempArray[i] = array[length-i-1];
        }
        return tempArray;
    }

    function returnArray() public view returns(uint256[] memory){
        return array;
    }
}