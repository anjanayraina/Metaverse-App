// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract Land is ERC721{

uint256 public cost =2 ether;

uint256 public maxSupply  = 100;
uint256 public currentSupply =0;

struct area{
string name;
address owner;
int256 x;
int256 y;
int256 z;
uint sizeX;
uint sizeY;
uint256  sizeZ;


    
}

area[] public allAreas;

constructor (string _name)


}
