// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

struct Args {
    address admin;
    address init;
}

enum FacetCutAction {Add, Replace, Remove}

struct Args2 {
    address facetAddress;
    FacetCutAction action;
    bytes4[3] functionSelectors;
}

contract ContractV5 {

    address public admin;
    address public init;

    address public facetAddress;
    FacetCutAction public action;
    bytes4[3] public functionSelectors;

    constructor(Args memory _args, Args2 memory _args2) {
        admin = _args.admin;
        init = _args.init;
        facetAddress = _args2.facetAddress;
        action = _args2.action;
        functionSelectors = _args2.functionSelectors;
    }

    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
