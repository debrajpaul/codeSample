pragma solidity ^0.5.0;

contract Bank {
	address public owner;
	uint balance;


	// Make the Constructor "payable"
             //write your code here
    constructor() public payable{
        require(msg.value==1 wei);
        owner = msg.sender;
    }    
    
    function deposit (uint amount) public payable returns(uint) {
        require(amount == msg.value, "Invalid money");
        balance += amount;
        return balance;
    }
    
     function withdraw (uint amount) public returns(uint) {
        if(amount<= balance){
            balance -= amount;
            msg.sender.transfer(amount);
        }
        return balance;
    }
}