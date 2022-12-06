// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    Contract c;

    function setUp() public {
        Args memory _args = Args({
            admin: address(0x0),
            init: address(0x0)
        });
        c = new Contract(_args);
    }

    function test_Bar_lessThan100_thenReturnFalse() public {
        bool ret = c.bar(50);
        assertTrue(!ret);
    }

}
