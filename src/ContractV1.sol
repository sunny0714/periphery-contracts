// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract ContractV1 {

    address public admin;
    address public init;

    constructor(address _admin, address _init) {
        admin = _admin;
        init = _init;
    }

    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
