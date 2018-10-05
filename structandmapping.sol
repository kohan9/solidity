pragma solidity ^0.4.0;
contract Course{
    struct Instructor{
        uint age;
        string fName;
        string lname;
        
    }
    mapping(address => Instructor) _instructors;
    address[] public instructorAccts;
    function setInstructor(address _address, uint _age, string _fName, string _lName) public{
        
    }
}