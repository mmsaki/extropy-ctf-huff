// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Level_3_Solution {
    /// ### Calldata layout
    /// 
    /// `selector . value`
    ///  
    /// | name     | size (bytes) | offset |
    /// | -------- | ------------ | ------ |
    /// | selector | 4            | 0x00   |
    /// | size     | 32           | 0x04   |
    /// | length   | 32           | 0x24   |
    /// | value    | 32           | 0x44   |
    function solution(bytes memory packed) external pure returns (uint8 a, bool b, bytes1 c) {
        assembly {
            a := shr(mul(0x08, 0x1f), calldataload(0x44))
            b := and(shr(mul(0x08, 0x1e), calldataload(0x44)), 0x00ff)
            c := shl(0x10, calldataload(0x44))
        }
    }
}