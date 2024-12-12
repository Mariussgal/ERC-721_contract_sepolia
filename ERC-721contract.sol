// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

// Import the ERC721 implementation from OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract MariusCardNFT is ERC721URIStorage {
    using Counters for Counters.Counter;  
    Counters.Counter private _tokenIdCounter; 

    
    constructor() ERC721("MariusCardNFT", "MCNFT") {}

    
    function safeMint(address to, string memory uri) public returns (uint256) {
        uint256 tokenId = _tokenIdCounter.current();  
        _tokenIdCounter.increment();

        
        _safeMint(to, tokenId);

        
        _setTokenURI(tokenId, uri);

        return tokenId;  
    }
}
