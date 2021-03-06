pragma solidity ^0.8.0;

contract AssignmentWeekTwo {
    address public owner;

    constructor() public {
        owner = msg.sender; 
    }

    modifier checkOwner() {
        require(msg.sender == owner, "Only the Owner is required to send Make this network request"); 
        _;
    }

    function changeOwner(address _newAddress) public checkOwner {
        owner = _newAddress; 
    }

    
}