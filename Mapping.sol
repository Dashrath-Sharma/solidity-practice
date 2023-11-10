// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Structure of a person who will denate some amount;
struct donner {
    string name;
    string add;
    uint256 donation;
}

contract Mapping {
    // Mapping can have keys as all the value type variables, Enums, and Contracts;
    mapping(address => donner) public donatiee;

    // Function that takes all the details that donner struct requires and sets it into donatiee ( mapping );
    // msg.sender gets the address of the person who is using the smart contract.
    function setDonatiee(
        string memory _name,
        string memory _add,
        uint256 _donation
    ) public {
        donatiee[msg.sender] = donner(
            _name,
            _add,
            donatiee[msg.sender].donation + _donation
        );
    }

    // Find details of any particular person using this smart contract.
    function getMyDetails() public view returns (donner memory) {
        return donatiee[msg.sender];
    }
}
