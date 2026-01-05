// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HeroOfTheVillage is ERC721, Ownable {

    constructor() ERC721("HeroOfTheVillage", "HERO") {}

    // Mint NFT (Deposit)
    function deposit(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    // Withdraw NFT back to contract owner
    function withdraw(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "Not token owner");
        _transfer(msg.sender, owner(), tokenId);
    }

    // Check NFT balance
    function getBalance(address ownerAddress) public view returns (uint256) {
        return balanceOf(ownerAddress);
    }
}// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HeroOfTheVillage is ERC721, Ownable {

    constructor() ERC721("HeroOfTheVillage", "HERO") {}

    // Mint (Deposit) NFT
    function deposit(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    // Withdraw NFT (transfer back to owner)
    function withdraw(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "Not token owner");
        _transfer(msg.sender, owner(), tokenId);
    }

    // Get balance of NFTs
    function getBalance(address ownerAddress) public view returns (uint256) {
        return balanceOf(ownerAddress);
    }
}
