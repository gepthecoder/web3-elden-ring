// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// 0x8b0ec3548E85D07d055259e7f28Dab2B72ddB5c9

contract Rune is ERC20 {

    address owner;

    constructor() ERC20("Rune", "RUNE") {
        owner = msg.sender;
    }

    function getExperience(uint256 amount) public {
        
        //DISCLAIMER -- NOT PRODUCTION READY CONTRACT
        //require(msg.sender == owner);

        _mint(msg.sender, amount);
    }
}