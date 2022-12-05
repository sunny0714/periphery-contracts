// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Contract { 
    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
