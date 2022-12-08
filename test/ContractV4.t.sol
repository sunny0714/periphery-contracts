// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/ContractV4.sol";

contract TestContract is Test {
    ContractV4 c;

    function setUp() public {
        Args memory _args = Args({
            admin: address(0x0),
            init: address(0x0)
        });

        Args2 memory _args2 = Args2({
            admin: address(0x0),
            init: address(0x0)
        });
        c = new ContractV4(_args, _args2);
    }

    function test_Bar_lessThan100_thenReturnFalse() public {
        bool ret = c.bar(50);
        assertTrue(!ret);
    }

}
