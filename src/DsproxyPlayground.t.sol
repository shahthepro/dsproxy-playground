pragma solidity ^0.5.6;

import "ds-test/test.sol";

import "./DsproxyPlayground.sol";

contract DsproxyPlaygroundTest is DSTest {
    DsproxyPlayground playground;

    function setUp() public {
        playground = new DsproxyPlayground();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
