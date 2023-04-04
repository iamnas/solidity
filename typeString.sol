//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract typeSting {
    string public name = "ram"; // state variable
    /// string variable is byDefault stored in blockchain 
    function getName() public  {
        /// using memory keyword we can use string in function 
        string memory testName = "dada";
        name = testName ;
    }   

    //// constant variable  it is used if some variable have constant value and i will have less 
    //// gas values as compare to normal variable. 

    address public constant nullAddress = 0x0000000000000000000000000000000000000000;

    //  constructor is a special method  
    // in a contract there is only one constructor
    // at the time of deploy  the first method is called which is constructor ;;

    constructor() {

    }
}