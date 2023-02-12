// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract{ 

    //state variable
    uint public myUnit = 1;   //variable value is stored on the blockchain, saved forever... everytime we update , it will be saved to the blockchain as well.
    // its scope is inside the whole contract

    uint256 public myUnit256 =1;   // default for unit as its default size is 256
    uint8 public myUnit8 =1; // 8 bits are used

    address public myAddress = 0x71C7656EC7ab88b098defB751B7401B5f6d8976F;

    int256 myInt=1; //this int can be signed too... minus huna pauxa

    bytes32 public myByte32 = "Hello World";

    //strings
    string public myString= "my cat looks like a dog";

    struct Mystruct{ 
        int a;
        string s;
    }

    Mystruct public mystruct = Mystruct(1,"ThisIsString");

    //local variable
    function getValue() public pure returns(uint){    //pure because blockchain lai mutate gardaina
        uint value=1;
        return value;
    }

}