// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract dynamicSizeArray {

    uint[] public arr = [1,2,3,4,5,6,7,8,9,10];

    function fun() public {

        // get

        uint temp = arr[5];

        //update 
        arr[3] = 6;

        //delete 
        delete arr[4];

        //length
        uint len = arr.length;

        // push

        arr.push(temp);
        arr.push(len);

        // pop
        arr.pop();

    }
}