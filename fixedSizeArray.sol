// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract fixedSizeArray {
    uint[5] public arr= [50,20,1,56,70] ;

    uint[5] arr2;

    constructor() {
        arr2 = [50,20,1,56,70];
    }

    function getArray2() public view returns(uint[5] memory) {
        // when wde return whole array gas cost will high
        return arr2;
    }

    function length() public view returns(uint){
        return arr.length;
    }

    function deleteIndexOfArray(uint index) public {
        delete arr[index];
    }

    function updateArray(uint index, uint value) public {
        arr[index] = value;
    }

    function createArray() public pure returns(uint[] memory){
        // we can only create fixed size array in memory 
        uint[] memory arrayMemory = new uint[](3);

        arrayMemory[0] = 100;
        arrayMemory[1] = 200;
        arrayMemory[2] = 600;

        return arrayMemory;

    }

    
}