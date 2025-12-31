// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * @title EventChainNFT
 * @dev A basic ERC-721 NFT contract for managing event-based tokens.
 */
contract EventChainNFT is ERC721 {
    
    constructor() ERC721("EventChainToken", "ECT") {}

    /**
     * @notice Mints (deposits) a new NFT to a specific address.
     * @param to The address that will receive the NFT.
     * @param tokenId The unique identifier for the NFT.
     */
    function deposit(address to, uint256 tokenId) public {
        _safeMint(to, tokenId);
    }

    /**
     * @notice Withdraws the NFT by burning it (removing it from circulation).
     * @param tokenId The ID of the NFT to be withdrawn.
     */
    function withdraw(uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "Caller is not the owner of this token");
        _burn(tokenId);
    }

    /**
     * @notice Returns the number of NFTs owned by a specific address.
     * @param owner The address to query the balance for.
     * @return The number of NFTs owned.
     */
    function getBalance(address owner) public view returns (uint256) {
        return balanceOf(owner);
    }
}