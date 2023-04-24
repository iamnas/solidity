// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract dynamicSizebytes {
    bytes public  temp;

    constructor () {
        temp = "QWQ";
    }

    function pushInBytes() public  {
        temp.push("a");
    }

    function popInBytes() public {
        temp.pop();
    }

    function getLength() public view returns(uint) {
        return temp.length ;
    }

    function getElement(uint index) public view returns(bytes1) {
        return temp[index] ;
    }
}