// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// The order of INHERITANCE.
// contracts E & D are inheriting A, Y, B, C.
// contract D is inheriting contracts in this order => A, Y, B, C.
// contract E must also inherit the contracts in the same order => A, Y, B, C.
// If the above is not followed, you will have an error to deal with

// As long as the contracts that a contract is inheriting do not inherit the same contracts, you can inherit the contracts in any order.
// For example:- contract I id inheriting contracts H & E, contract H is inheriting less contracts than contract E regardless, contract I is inheriting contract H first and then contract E.

contract A {
    uint256 public a = 5;
}

contract B is A {
    uint256 public b = 10;
}

contract C is A {
    uint256 public c = 15;
}

contract X {
    uint256 public x = 25;
}

contract Y is X {
    uint256 public y = 25;
}

contract D is X, A, Y, B, C {
    uint256 public d = 20;
}

contract E is A, Y, B, C, D {}

contract F {}

contract G {}

contract H is G,F{}

contract I is H,E {} 
