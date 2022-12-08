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

contract ContractV6 {

    address public admin;
    address public init;

    address public facetAddress;
    FacetCutAction public action;
    bytes4[3] public functionSelectors;

    address public facetAddressV2;
    FacetCutAction public actionV2;
    bytes4[3] public functionSelectorsV2;

    constructor(Args memory _args, Args2[] memory _args2) {
        admin = _args.admin;
        init = _args.init;
        for (uint256 i; i < _args2.length; i++) {
            if(i==0) {
                facetAddress = _args2[i].facetAddress;
                action = _args2[i].action;
                functionSelectors = _args2[i].functionSelectors;            
            } else if (i == 1) {
                facetAddressV2 = _args2[i].facetAddress;
                actionV2 = _args2[i].action;
                functionSelectorsV2 = _args2[i].functionSelectors;
            }
        }
    }

    function bar(uint x) public pure returns(bool) {
        if(x > 100) {
            return true;
        } else {
            return false;
        }        
    }
}
