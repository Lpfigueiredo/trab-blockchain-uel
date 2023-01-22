// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Hash {
    function hash(string memory text) public pure returns (bytes32) {
        return keccak256(bytes(text));
    }
}
