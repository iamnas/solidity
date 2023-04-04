

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract viewAndPureFunctions {
    uint public age = 22;

    function viewFun() public view returns(uint) {
        return age;
    }

    function pureFun(uint _age) public pure returns(uint) {
        return _age;
    }
}