// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Inheritance Concept along with overriding methods.

contract Parent{
    // virtual Keyword allows children contracts to access and modify this function in their declaration;
    function toBeOverridden() public pure virtual returns(string memory){
        return "In Parent";
    }
}

contract Child is Parent{
    // override Keyword in conjuction with virtual keyword allows children to change the definition of a function declared inside parent
    function toBeOverridden() public pure override returns(string memory){
        return "In Child";
    }
}
