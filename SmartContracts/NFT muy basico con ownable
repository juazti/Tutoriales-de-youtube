// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 token_count;

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return "https://raw.githubusercontent.com/Turupawn/NFTest/main/logo_big.png";
    }

    function mintNFT(address to) public onlyOwner
    {
        token_count  += 1;
        _mint(to, token_count);
    }

    constructor() ERC721("My NFT", "MNFT") {}
