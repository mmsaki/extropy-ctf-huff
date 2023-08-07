// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/*
  interface I1 {
    function solution(uint256[2][2] calldata firstArray, uint256[2][2] calldata secondArray) external pure returns (uint256[2][2] calldata finalArray);
  }
*/

contract C1 {

    function solution(
        uint256[2][2] calldata x, 
        uint256[2][2] calldata y
    ) external pure returns (
        uint256[2][2] memory z
    ) {
        // 1. solidity
        z[0][0] = x[0][0] + y[0][0]; 
        z[0][1] = x[0][1] + y[0][1]; 
        z[1][0] = x[1][0] + y[1][0]; 
        z[1][1] = x[1][1] + y[1][1]; 
        
        // 2. assembly
        // assembly {
        //     mstore(0x00, add(calldataload(0x04),calldataload(0x84)))
        //     mstore(0x20, add(calldataload(0x24),calldataload(0xa4)))
        //     mstore(0x40, add(calldataload(0x44),calldataload(0xc4)))
        //     mstore(0x60, add(calldataload(0x64),calldataload(0xe4)))
        //     return(0x00, 0x80)
        // }
    }
}