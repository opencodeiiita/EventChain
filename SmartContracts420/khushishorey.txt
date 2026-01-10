// SPDX-License-Identifier: MIT

//License to avoid compiler warnings
pragma solidity ^0.8.0;           //similar to like #include<stdio.h> but haan not exactly

contract SimpleNFT {              // this creates a NFT(which is basically a unique id having unique owner or address)
                                  // now to create a nft, we use 2 mappings, one from token to owner and other from owner to balance

    mapping(uint256 => address) private owners;   //this means falana token is owned by  dhikana owner/add
    mapping(address => uint256) private balances; //this tells ki ek owner ke pass kitne tokens h

    function deposit(address to, uint256 tokenId) public {     //deposit func creates a new NFT
        require(to != address(0), "Invalid Address");          //agar ye cond true hogi to continue, else print the quoted thing
        require(owners[tokenId] == address(0), "Token already exist");

        owners[tokenId] = to;     //this line assigns the nft to the owner like give (nft #x) to falana address/owner
        balances[to] += 1;        //increses the count of nft of the owner by 1
    }

    function withdraw(uint256 tokenId) public {           //withdraw deletes the nft, only owner can delete its own nft
        address owner = owners[tokenId];
        require(owner != address(0), "Token doesnt exists");
        require(owner == msg.sender, "The person who called this function is not the");

        owners[tokenId] = address(0);         //makes the address of the token 0 which means the token no longer exixts(deleted),yayaya
        balances[owner] -= 1;                 //decreses the count of nft by 1
    }

    function getBalance(address owner) public view returns(uint256) {
        return balances[owner];
    }
}