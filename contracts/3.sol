// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Level_3_Solution {
    function solution(bytes memory packed) external pure returns (uint8 a, bool b, bytes1 c) {
        assembly {
            a := shr(mul(0x08, 0x1f), calldataload(0x44))
            b := and(shr(mul(0x08, 0x1e), calldataload(0x44)), 0x00ff)
            c := shl(mul(0x08, 0x1f), and(shr(mul(0x08, 0x1d), calldataload(0x44)), 0x0000ff))
        }
    }
}