// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{ 
    //Arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["hello","hello2"];
    string[] public values;  

    //Now we try to manipulate arrays in solidity 
    
    //function to manupulate the array variable value
    function addValue(string memory _value) public { 
        values.push(_value);  //push adds the string to the string array's last index
        //gas is consumed in updating this already existing 'value' array
    }

    function valueCount() public view returns(uint){    //return use vayeko thau ma 'view returns(...)' hunxa
        return values.length;
    }

    //2d arrays -> arrays of arrays

    uint256[][] public array2D = [[1,2,3],[4,5,6]];
}
