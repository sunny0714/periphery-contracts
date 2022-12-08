// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/ContractV6.sol";

contract TestContract is Test {
    ContractV6 c;

    function setUp() public {
        Args memory _args = Args({
            admin: address(0x0),
            init: address(0x0)
        });

        Args2[] memory _args2 = new Args2[](2);

        _args2[0] = Args2({
            facetAddress: address(0x0),
            action: FacetCutAction.Add,
            functionSelectors: [bytes4(0xfbff3a41), bytes4(0xc3ffb565), bytes4(0xeec5e10a)]
        });
        _args2[1] = Args2({
            facetAddress: address(0x0),
            action: FacetCutAction.Add,
            functionSelectors: [bytes4(0xfbff3a41), bytes4(0xc3ffb565), bytes4(0xeec5e10a)]
        });

        c = new ContractV6(_args, _args2);
    }

    function test_Bar_lessThan100_thenReturnFalse() public {
        bool ret = c.bar(50);
        assertTrue(!ret);
    }

}
