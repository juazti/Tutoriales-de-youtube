// contracts/GameItem.sol
// SPDX-License-Identifier: MIT

//contrato basico para crear un NFT, probado y mostrado en el canal de youtube
//probado con el logo del bot del grupo de telegram Dog assistant
//Solo habria que reemplazar y listo
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract DogAssistant is ERC721 {
    uint256 token_count;

    constructor() ERC721("Dog Assistant", "DA") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return "https://ipfs.io/ipfs/QmT8wQXdnutG6gE49UiAyDpgN3gucAdNyR2Dv4sEd7CLAF";
    }

    function mintNFT(address to) public
    {
        token_count  += 1;
        _mint(to, token_count);
    }
}
