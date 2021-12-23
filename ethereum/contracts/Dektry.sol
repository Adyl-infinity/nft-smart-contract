// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "https://github.com/immutable/imx-contracts/blob/main/contracts/Asset.sol";

contract Dektry is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("Dektry", "DKY") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://40a8-77-95-58-26.ngrok.io/api/erc721/";
    }

    function mint(address to)
    public returns (uint256)
    {
        require(_tokenIdCounter.current() < 3);
        _tokenIdCounter.increment();
        _safeMint(to, _tokenIdCounter.current());

        return _tokenIdCounter.current();
    }
}