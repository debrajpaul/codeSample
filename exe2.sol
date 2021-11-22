pragma solidity ^0.5.0;

contract voting{
    
    mapping (bytes32=>uint8) public totalVotes;
    bytes32[] public candiNames;
    
    constructor(bytes32[] memory _candiNames) public{
        candiNames = _candiNames;
    }
    
    function totalVotesFor(bytes32 _candiNames) isValidUser(_candiNames) public returns(uint8){
        return totalVotes[_candiNames];
    }
    
    function voteForCandi(bytes32 _candiNames) isValidUser(_candiNames) public {
        totalVotes[_candiNames] +=1;
    }
    
    modifier isValidUser(bytes32 _candiNames){
        require(isValidUserCond(_candiNames),"not a valid user");
        _;
    }
    
    function isValidUserCond(bytes32 _candiNames) public returns(bool) {
        for(uint i=0;i<candiNames.length;i++){
            if(candiNames[i]==_candiNames){
                return true;
            }
        }
        return false;
    }
    
}