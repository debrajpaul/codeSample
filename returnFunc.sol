pragma solidity ^0.5.0;

contract C {
	struct Marks{
    	//write your code here
    	string subject;
    	uint mark;
    	
	}
	Marks[] public marks;
    
	//write the function addMarks here
	function addMarks (string memory subject, uint mark) public{
	    marks.push(Marks({
            subject: subject,
            mark:mark
        }));
	}
	
	function percentage () public view returns(uint){
	    uint sum = 0;
	    for(uint i=0;i<marks.length;i++) {
	        sum = sum + marks[i].mark;
	    }
	   return sum*100/(marks.length*100);
	}
}