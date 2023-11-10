// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enums {
    // Enum allows to create a variable type that can have any one of the mentioned values at a time;
    // The first para Pending has a number assigned ZERO ( 0 ) and the last one is FOUR ( 4 );
    // What I think is this set of enum status variable definition is for internal code readabilty and nothing more.
    enum status {
        Pending, // Status 0;
        Processing, // Status 1;
        Successful, // Status 2;
        Cancelled, // Status 3;
        Rejected // Status 4;
    }

    // Creates Status1 & Status2 Variables with the Type of our status variable type that we defined;
    status Status;

    // This function simply shows the currrent status of the Status variable;
    function getStatus() public view returns(status){
        return Status;
    }

    // User can set status using this function;
    function setStatus(status _newStatus) public {
        Status = _newStatus;
    }

    // This function sets Status to Pending;
    function pending() public {
        Status = status.Pending;
    }

    // This function sets Status to Processing;
    function processing() public {
        Status = status.Processing;
    }

    // This function sets Status to Successful;
    function successful() public {
        Status = status.Successful;
    }

    // This function sets Status to Cancelled;
    function cancelled() public {
        Status = status.Cancelled;
    }

    // This function sets Status to Reject;
    function reject() public {
        Status = status.Rejected;
    }
}
