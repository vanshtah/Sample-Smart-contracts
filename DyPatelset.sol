pragma solidity 0.4.25;

contract HelloWorld{
    address public owner;
    string public message;
    // constructor (string name) public {
    //     owner = msg.sender;
    //     message = name;
    // }
    
    function getMessage() public view returns (string){
        return message;
    }
    
    function changeMessage(string name) public {
        message = name;
    }
}

contract example is HelloWorld{
    
    struct Users{
        string firstname;
        string lastname;
        uint256 mobile_no;
        uint age;
        uint balance;
    }

    mapping (address => uint) balance;    
    mapping (address => Users) users;

    
    constructor (string name) public{
        owner = msg.sender;
        message = name;
    }
    
    function destruct() public{
        if(msg.sender != owner) revert();
        selfdestruct(owner);
    }
    
    function record(string fname, string lname, uint256 mobile_no, uint age) public payable{
        Users storage usr = users[msg.sender];
        usr.firstname = fname;
        usr.lastname = lname;
        usr.mobile_no = mobile_no;
        usr.age = age;
        usr.balance = msg.value;
    }
    
    function getinfo(address user) public view returns (string, string, uint256, uint, uint){
        return (users[user].firstname, users[user].lastname, users[user].mobile_no, users[user].age, users[user].balance);
    } 
}