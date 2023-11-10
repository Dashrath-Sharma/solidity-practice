// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structures{

    // struct is a keyword that helps create another dev defined variable type this type of datatype can take all the different variable types eccept it's own.
    struct Structure{
        string emp_Name;
        uint emp_Id;
        address emp_Address;
    }

    // creating a Structure type of variable which will have emp_Name, emp_Id, emp_Address;
    Structure employee;

    // Function that gets Values to employee;
    function getValues() public view returns(Structure memory){
        // This will return a tuple(string,uint,address): emptyString, 0, ,0x0000000000000000000000000000000000000000; These are default values;
        return employee;
    }

    function setValuesAsObject() public{
        // This will return a tuple(string,uint256,address): Dashrath,1,0x5B38Da6a701c568545dCfcC03FcC175f56beddC4; These are newly set values;
        employee = Structure({emp_Name:"Dashrath", emp_Id:1,emp_Address:0x5B38Da6a701c568545dCfcC03FcC175f56beddC4});
    }

    function setValuesAsFunction() public{
        // This will return a tuple(string,uint256,address): Vishal,2,0xAb8483F64d9C6d1EcF9c149Ae677dC3315835cb2; These are newly set values;
        employee = Structure("Vishal", 2,0xAb8483F64d9C6d1EcF9c149Ae677dC3315835cb2);
    }

    // This method of assigning values can not be used directly inside the contract, you need to have a function to do that;
    function setIndividualValues() public{
        // This will return a tuple(string,uint256,address): Rajender,3,0x4B20993Bc481177eb7E8f571ceBaE1A9e22C02db; These are newly set values;
        employee.emp_Name = "Rajender";
        employee.emp_Id = 3;
        employee.emp_Address = 0x4B20993Bc481177eb7E8f571ceBaE1A9e22C02db;
    }

}
