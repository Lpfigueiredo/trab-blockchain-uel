// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LdnaToken is ERC20 {
    uint256 constant _initial_supply = 100;

    constructor() ERC20("Ldna Ethereum Token", "LdnaToken") {
        _mint(msg.sender, _initial_supply);
    }
}
