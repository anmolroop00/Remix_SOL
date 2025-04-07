//SPDX-License-Identifier:MIT

pragma solidity ^0.8.7;

contract demo{
    function fib(uint256 _num) public pure returns(uint){
        if(_num==0){
            return 0;
        }
        else if(_num==1){
            return 1;
        }
        else{
            return(fib(_num-1)+fib(_num-2));
        }
    }
}