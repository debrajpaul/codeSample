pragma solidity ^0.5.0;

contract Hospital{
	struct Room{
    	//complete the struct
    	bytes32 roomName;
    	string occupant;
    	bool isFree;
	}
	Room[] public rooms;
    
	constructor (bytes32[] memory names) public{
    	//complete the constructor       	 
    	for(uint i=0;i<names.length;i++){
    	    rooms.push(Room({roomName:names[i],isFree:false, occupant:"none"}));
    	}
	}
	function assignRoom(bytes32 roomName, string memory patientName) public returns(string memory){
    	//complete the function
    	for(uint i=0;i<rooms.length;i++){
            if(rooms[i].roomName==roomName){
                if(rooms[i].isFree==true){
                    return "room occupied";
                }
                else{
                    rooms[i].occupant=patientName;
                    rooms[i].isFree=true;
                    return "assigned";
                }
                
            }
        }
           	 	
    }
    
}