// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";

contract Exercise {
    uint64 private a;
    uint64 private b;
    uint128 private d;
    address private c;

    function setValues(uint64 _a, uint64 _b, address _c, uint128 _d) external {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getValues()
        external
        view
        returns (uint64, uint64, address, uint128)
    {
        return (a, b, c, d);
    }
}
