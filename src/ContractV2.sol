// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;


struct Args {
    address admin;
    address init;
}

contract ContractV2 {

    address public admin;
    address public init;

    constructor(Args memory _args) {
        admin = _args.admin;
        init = _args.init;
    }

    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
