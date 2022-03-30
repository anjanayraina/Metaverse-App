// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract Land is ERC721{

uint256 public cost =1 ether;

uint256 public maxSupply  = 100;
uint256 public currentSupply =0;
// This is the main class that we will use buy a land in our metaverse

struct area{
string name;
address owner;
int256 x;
int256 y;
int256 z;
uint256 sizeX;
uint256 sizeY;
uint256  sizeZ;


    
}

// this is an array that will tell us the land that has been currently been taken

area[] public allAreas;

constructor (string memory _name , string memory _symbol , uint256 _cost) ERC721 (name , symbol){

    cost = _cost;
    // pushing some initial values into the Land
    // to get started 
    allAreas.push(
        
        area("E-54",  address(0x0) , 0, 0, 0, 100 , 100 , 100)
    );

     allAreas.push(
        
        area("New Plot",  address(0x0) , 101, 101, 101, 50 , 50 , 50)
    );

    // we are putting address as 00x0 to let the contract know that no one owns these buildings


function mint(uint256 _id ) public payable{

// this function will be used to buy more land in our metaverse

uint256 supply = totalSupply;
//require statements are used to verify a transaction that is about to happen
// In this case ,we have to check if the current supply of houses isnt exceeding the max supply of
// if that given land hasnt been bought till now and many other conditions like that 
require(supply <= maxSupply) ;
require(buildings[_id - 1].owner == address(0x0));
require(msg.value >=1 ether);

buildings[_id - 1].owner = msg.sender;
totalSupply+=1;
__safeMint(msg.sender , _id);

}

function transferForm{

    address from , 
    address  to ,
    uint256 tokenId 
} public override{

require(

_isApprovedOrOwner(_msgSender() ,tokenID), "ERC transfer is not approved"

);
buildings[_id - 1].owner =to;
_transfer(from , too, tokenId);


}

}
