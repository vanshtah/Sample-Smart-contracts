pragma solidity 0.4.25;

contract HelloWorld{
    address public owner;
    string public message;
    constructor (string name) public {
        owner = msg.sender;
        message = name;
    }
    
    function getMessage() public view returns (string){
        return message;
    }
    
    function changeMessage(string name) public {
        message = name;
    }
}