// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "forge-std/Script.sol";

import "./DepositContract.constant.sol";


// steth is your friend
contract Exercise {
    address dc;

    function getValues() external pure returns (bytes memory, bytes memory, bytes memory) {
        return (
            hex"abba7ff9c3c3c05196b45293fdb59c1c171345cf3f27b12ab93c1ffd409856558fe21f44f7a34068e4a63c864f3746f5",
            hex"a8a2534849b2da27b9be7ca99056752d7917cbd8d90f2c16443e5c74b2980c051ff36bf79bd219822e40c191415c28ae130d900c9a7ee9c438e572f8d2f0013fa7b2406bafd080578259c5a95968949f999bb2ade4cf9e3b88dc20edf66a4e52",
            hex"000abf24ae02c659fd86f17405b350e6162bb195257df63b9a4516e0928620c0"
        );
    }

    function setDepositContract(address _dc) external {
        dc = _dc;
    }

    function deposit(bytes calldata pubkey, bytes calldata signature, bytes calldata withdrawal) external payable {
        IDepositContract(dc).deposit{value: 32 ether}(
            pubkey,
            withdrawal,
            signature,
            0xf593f5ec33d1a72fb559421cc87e043fa726aca3a6e12f7e32a586468fe51420
        );
    }
}
