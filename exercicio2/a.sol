// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Calculadora {
    function somar(uint32 a, uint32 b) public pure returns (uint32) {
        return a + b;
    }

    function subtrair(uint32 a, uint32 b) public pure returns (uint32) {
        return a - b;
    }

    function multiplicar(uint32 a, uint32 b) public pure returns (uint32) {
        return a * b;
    }

    function dividir(uint32 a, uint32 b) public pure returns (uint32) {
        return a / b;
    }
}
