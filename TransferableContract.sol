// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transferable{
    // The contract owner's address will be here;
    address public owner; 
    constructor(){
        // Whoever deploys this contract, will be the owner. MSG is a global variable & has access to blockchain;
        owner = msg.sender; 
    }

    modifier onlyOnwer(){
        // require is kind of if and else, first para is condition, if that condition fails, the second part is a fallback ( false statement ). Everything else written under it is part of true statement;
        require(owner == msg.sender, "Not Owner"); // 
        // This is required inside a modifier's body. Otherwise, you will get error;
        // _; means to continue to read the contract if the above conditions are true;
        _; 
    }

    // Modifier can be used in a function definition to validate it as a middleware;
    // setOwner function uses Modifier named onlyOwner;
    function setOwner(address _newOwner) public onlyOnwer{
        // This require checks if address is not zero;
        require(_newOwner != address(0), "Invalid Address");
        // If the above statement is true, the line below where we are setting the new owner will execute;
        owner = _newOwner;
    }
}
