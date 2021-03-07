pragma solidity ^0.8.0;

contract AssignmentTwoSecond {

    address public minter;
    mapping (address => uint) public balances;

    constructor() {
        minter = msg.sender; 
    }

    function setBalance(address _addr, uint balance) public {
        balances[_addr] = balance; 
    }

    function getBalance(address _addr) public view returns(uint) {
        uint balanceAddr = balances[_addr]; 
        return balanceAddr; 
    }

    
    
}