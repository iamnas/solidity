// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract fixedSizeBytes {
    bytes3 public temp1; // default values = 0x000000
    bytes6 public temp2; // default values = 0x000000000000
    bytes20 public temp3; // default 0x0000000000000000000000000000000000000000
    address public add ; // default 0x0000000000000000000000000000000000000000

    // bool public isEqual; 

    function isEqual() public pure returns(bytes20 ){
        // bool ans  = (temp3==bytes20(add)?true:false);
        return bytes20(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function setValues() public {
        temp1 = "xyz"; // 0x78797a
        temp2 = "xyz"; //0x78797a000000 padding
    }

    function getDigit() public view returns(bytes1){
        return temp1[2];
    }

    function getLen() public view returns(uint){
        return temp1.length;
    }




}


// 1 bytes = 8 bit
// 1 hex = 4 bit
//  1 byte = 2 hexa