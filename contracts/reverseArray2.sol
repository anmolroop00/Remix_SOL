// SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract demo{
    uint256[] public data;

    function addData(uint _inp) external{
        data.push(_inp);
    }

    function reverseArray(uint[] memory _array, uint _length) public pure returns(uint[] memory) {
        uint[] memory revArray = new uint[](_length);
        for (uint i = 0; i < _length; i++) {
            revArray[i] = _array[_length - i - 1];
        }
        return revArray;
    }


    function returnArray() public view returns(uint[] memory){
        return data;
    }
}