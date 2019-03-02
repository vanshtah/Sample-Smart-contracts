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
    
    function record(string _fname, string _lname, uint256 _mobile_no) public{
        
        Users usr = users[msg.sender];
        usr.fname = _fname;
        usr.lname = _lname;
        usr.mobile_no = _mobile_no;
        usr.balance = msg.value;
    }
    
    function getRecord() public view returns (string, string, uint256, uint){
        return (users[msg.sender].fname, users[msg.sender].lname, users[msg.sender].mobile_no, users[msg.sender].balance );
    }
    
}
