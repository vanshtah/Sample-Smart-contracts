contract example{
    string public message;
    address public owner;
    
    
    function changeMeassage(string _message){
        if(msg.sender != owner) revert();
        message = _message;        
    }
    
    
}

contract example1 is example{
    
    struct Users{
        string fname;
        string lname;
        uint256 mobile_no;
        uint balance;
    }
    
    mapping (address => Users) users;
    mapping (address => uint) balance;
    
    constructor(string _message) public{
        owner = msg.sender;
        message = _message;
    }
    
    function record(string _fname, string _lname, uint256 _mobile_no) public payable{
        
        Users usr = users[msg.sender];
        usr.fname = _fname;
        usr.lname = _lname;
        usr.mobile_no = _mobile_no;
        usr.balance = msg.value;
    }
    
    function getRecord(address user) public view returns (string, string, uint256, uint){
        return (users[user].fname, users[user].lname, users[user].mobile_no, users[user].balance );
    }
    
    function destructur() public{
        require( msg.sender != owner, "error in execution"); revert();
        // if(msg.sender != owner )
        selfdestruct(owner);
    }
}
