//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;
pragma abicoder v2;


contract Test {
    struct User{
        string name;
        address addr;
    }

    mapping(address => User) public users ;
    string[] names;

    event UserAdded(address addr,User user);
    // example :: ["name","address"] 
    function addUser(User memory _user) public {
        users[_user.addr] = _user;
        names.push(_user.name);
        emit  UserAdded(_user.addr,_user);
    }

    function resetNames(string[] memory _name) public {
        names = _name;
    }

    function getAllnames() public view returns(string[] memory){
        return names;
    }

}

