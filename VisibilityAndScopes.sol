// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// public, private, internal external
// public accessible everywhere;
// private accessible within the contract it's declared;
// internal accessible within the file scope such as the contract itself and it's childrens through inheritance;
// external accessible outside of the file scope in different contract not declared in the same file;

// *******************************************************************************************

// Function level visibility Adons

// pure, view, simple

// pure used when the function is not changing & it doesn't view any details from the state of contract 
// pure:e.g => function pureExample() public pure returns(uint){ return uintVariableName }

// view used when the function is not changing the state of contract 
// view:e.g => function view Example() public pure returns(uint){ return uintVariableName }

// simple function is can read and alter the state of contract but does not let user view the state.
// simple:e.g => function view Example() public { Some Code }
