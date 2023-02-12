// SPDX-License-Identifier : MIT

pragma solidity ^0.8.0;

contract Counter{ 
    uint count;    //count vanne variable is in the blockchain

    constructor() public{ 
        count =0;
    }
    
    function getCount() public view returns(uint) {   //read function -> doesn't cost gas
        return count;
    }

    function incrementCount() public{ 
        count = count+1;   //we are updating the value of count...write function ->  this costs some gas
    }
}