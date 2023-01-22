// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Owner {
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function payTheOwner() public payable {
        require(msg.value == 1 wei, "Only 1 wei is transferable");
        (bool sent, ) = owner.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
