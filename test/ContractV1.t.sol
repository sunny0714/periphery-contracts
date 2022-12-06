// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/ContractV1.sol";

contract TestContract is Test {
    ContractV1 c;

    function setUp() public {
        c = new ContractV1(address(0x0), address(0x0));
    }

    function test_Bar_lessThan100_thenReturnFalse() public {
        bool ret = c.bar(50);
        assertTrue(!ret);
    }

}
