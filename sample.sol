// SPDX-License-Identifier: MIT


// this lines means that it will support form 0.8.0 to latest version 
pragma solidity ^0.8.0;

contract Sample {
    address public owner ;
    constructor (){
        owner = msg.sender ;
    }

    modifier onlyOwner (){
        require(msg.sender == owner,"Only owner can call this method !");

        _;
    }

    function setOwner (address _newOwner) public onlyOwner {
        // require(msg.sender == owner,"Only owner can call this method !");
        require(_newOwner != address(0),"Invalid address");
        owner = _newOwner ;
    }



}