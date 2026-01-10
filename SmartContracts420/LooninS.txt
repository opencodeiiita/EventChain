pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HeroOfTheVillage is ERC721, Ownable {
    uint256 private _nextTokenId;
    
    constructor() ERC721("Hero of the Village", "HOTV") Ownable(msg.sender) {}

    function deposit(address to, uint256 tokenId) external onlyOwner {
        require(tokenId == 0 || tokenId == _nextTokenId, "Use 0 for sequential or exact next ID");
        uint256 mintId = tokenId == 0 ? _nextTokenId++ : tokenId;
        _mint(to, mintId);
    }

    function withdraw(uint256 tokenId) external {
        require(ownerOf(tokenId) == msg.sender, "Not the owner");
        _burn(tokenId);
    }

    function getBalance(address owner) external view returns (uint256) {
        return balanceOf(owner);
    }
}

