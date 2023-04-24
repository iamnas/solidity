

// enum is a user define datatype 
// Enums restrict a variable to
//  have one of only a few predefined values.
//  The values in this enumerated list are called enums.
// 

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum {

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel
    }

    Status public status ;

    function getStatus() public view returns(Status){
        return status;
    }

    function setStatus(Status _status) public{
        status = _status;
    }

    function setRejected() public {
        status = Status.Rejected;
    }

    function reSet() public {
        delete status;
    }
}