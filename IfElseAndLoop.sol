//  SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract MyContract{ 
    //conditionals
    //loops
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    function isEven(uint _number) public view returns(bool){ 
        if(_number %2 ==0){ 
            return true;
        }
        else
            return false;
    }

}

