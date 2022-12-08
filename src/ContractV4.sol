// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;


struct Args {
    address admin;
    address init;
}

struct Args2 {
    address admin;
    address init;
}

contract ContractV4 {

    address public admin;
    address public init;

    address public admin2;
    address public init2;

    constructor(Args memory _args, Args2 memory _args2) {
        admin = _args.admin;
        init = _args.init;
        admin2 = _args2.admin;
        init2 = _args2.init;
    }

    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
