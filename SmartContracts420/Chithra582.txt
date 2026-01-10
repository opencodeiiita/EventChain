// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract ChithraNFT {
    string public name = "ChithraNFT";
    string public symbol = "CNFT";

    mapping(uint256 => address) private _owners;
    mapping(address => uint256) private _balances;

    // Mint NFT to an address
    function deposit(address to, uint256 tokenId) public {
        require(_owners[tokenId] == address(0), "Token already exists");
        _owners[tokenId] = to;
        _balances[to] += 1;
    }

    // Transfer NFT to another address
    function withdraw(address to, uint256 tokenId) public {
        require(_owners[tokenId] == msg.sender, "You do not own this token");
        _owners[tokenId] = to;
        _balances[msg.sender] -= 1;
        _balances[to] += 1;
    }

    // Check NFT balance of an address
    function getBalance(address owner) public view returns (uint256) {
        return _balances[owner];
    }

    // Check who owns a token
    function ownerOf(uint256 tokenId) public view returns (address) {
        return _owners[tokenId];
    }
}
