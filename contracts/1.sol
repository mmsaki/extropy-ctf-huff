// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution1 {
    function solution(
        uint256[2][2] calldata x, 
        uint256[2][2] calldata y
    ) external pure returns (
        uint256[2][2] memory
    );
}