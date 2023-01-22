// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Calculadora {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier payValue() {
        require(msg.value >= 1 wei, "At least 1 wei is required");

        (bool sent_owner, ) = owner.call{value: 1 wei}("");
        require(sent_owner, "Failed to send Ether to owner");

        (bool sent_payee, ) = msg.sender.call{value: msg.value - 1 wei}("");
        require(sent_payee, "Failed to send Ether to payee");

        _;
    }

    function somar(uint32 a, uint32 b)
        public
        payable
        payValue
        returns (uint32)
    {
        return a + b;
    }

    function subtrair(uint32 a, uint32 b)
        public
        payable
        payValue
        returns (uint32)
    {
        return a - b;
    }

    function multiplicar(uint32 a, uint32 b)
        public
        payable
        payValue
        returns (uint32)
    {
        return a * b;
    }

    function dividir(uint32 a, uint32 b)
        public
        payable
        payValue
        returns (uint32)
    {
        return a / b;
    }
}
