// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract YougoNFT is ERC721, ERC721URIStorage, Ownable {
    string _baseUri = "https://ipfs.io/ipfs/QmbWY7Q6XLj6rBS5XG3xYQv1kMzpgccvXMyEHEWSqFUpDN/";

    constructor(address initialOwner) ERC721("Yougo", "YGO") Ownable(initialOwner) {}

    function _baseURI() internal view override returns (string memory) {
        return _baseUri;
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}
