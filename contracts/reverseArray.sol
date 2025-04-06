// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReverseArrayLab {
    uint[] public array;

    // Function to insert values into the array
    function insertValues(uint[] memory values) public {
        delete array; // Clear the array before inserting new values
        for (uint i = 0; i < values.length; i++) {
            array.push(values[i]);
        }
    }

    // Function to reverse the array
    function reverseArray() public view returns (uint[] memory) {
        uint length = array.length;
        uint[] memory reversed = new uint[](length);
        
        for (uint i = 0; i < length; i++) {
            reversed[i] = array[length - 1 - i];
        }

        return reversed;
    }
}
