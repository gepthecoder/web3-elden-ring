// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


// 0xbD5D53FA86540A27D6aCeCeD551794bb3E0e9e19

contract GameItem is ERC721URIStorage {

    // Auto generates tokenIds
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    address owner;

    constructor() ERC721("GameItem", "G3P") {
        owner = msg.sender;
    }

    function getItem(string memory tokenURI) public returns (uint256)
    {
        //DISCLAIMER -- NOT PRODUCTION READY CONTRACT
        //require(msg.sender == owner);

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        _tokenIds.increment();
        return newItemId;
    }
}