import "github.com/oraclize/ethereum-api/oraclizeAPI_0.4.sol";
/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor () public {
    owner = msg.sender;
  }


  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }


  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
     emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}
contract Vault is Ownable {
    using SafeMath for uint256;

    mapping (address => uint256) public deposited;
    address public wallet;
   
    event Withdrawn(address _wallet);
         
    constructor (address _wallet) public {
        require(_wallet != address(0));
        wallet = _wallet;
    }

    function deposit(address investor) public onlyOwner  payable{
        
        deposited[investor] = deposited[investor].add(msg.value);
        
    }
    
    function withdrawToWallet() onlyOwner public{
    
    wallet.transfer(address(this).balance);
     emit Withdrawn(wallet);
  }
}

contract  AcceptEth is Ownable, usingOraclize{
    using SafeMath for uint;
    
    address public owner;
    Vault public vault;
    uint256 public ETHUSD;
    uint256 public silvercardinether;
    uint256 public goldcardinether;
    uint256 public platinumcardinether;
    uint256 public silvercard;
    uint256 public goldcard;
    uint256 public platinumcard;
    uint256 public lastUpdateTime;
    uint256 public gasPrice = 4000000000;

    struct Buyer {
        uint balance;
        uint256 ETHtoUSD;
        string cardtype;
        uint256 timestamp;
    }
    mapping (address => uint) balance; 
    mapping (address => Buyer) buyers;
    
   event LogPriceUpdated(string price);
   event LogNewOraclizeQuery(string description);

    constructor (address _wallet, uint256 _valuesilver, uint256 _valuegold, uint256 _valueplatinum)public {

        vault = new Vault(_wallet);
        silvercard = _valuesilver;
        goldcard = _valuegold;
        platinumcard = _valueplatinum;
        owner = msg.sender;
        oraclize_setCustomGasPrice(gasPrice);
        updatePrice();
        }
        
        function() public payable {
	if(now - lastUpdateTime > 1 hours) {
            updatePrice();
        }
        require(msg.value == silvercardinether*10**14 || msg.value == goldcardinether*10**14 || msg.value == platinumcardinether*10**14);
        balance[msg.sender] += msg.value;
	    var Buyer = buyers[msg.sender];
	    Buyer.balance = msg.value;
	    Buyer.ETHtoUSD = ETHUSD;
	    if(msg.value == silvercardinether*10**14)
	        Buyer.cardtype = 'silvercard';
	    else if( msg.value == goldcardinether*10**14 )
	        Buyer.cardtype ='goldcard';
	    else
	        Buyer.cardtype = 'platinumcard';
	    Buyer.timestamp = now;
        vault.deposit.value(msg.value)(msg.sender);
    }
    
    function updatePrice(){
       if(msg.sender != owner && now-lastUpdateTime < 1 hours) revert();
       if (oraclize_getPrice("URL") > this.balance) {
           LogNewOraclizeQuery("Oraclize query was NOT sent, please add some ETH to cover for the query fee");
       } else {
           LogNewOraclizeQuery("Oraclize query was sent, standing by for the answer..");
           oraclize_query("URL", "json(https://api.pro.coinbase.com/products/ETH-USD/ticker).price");
       }
   }
    
       function __callback(bytes32 myid, string result) {
       if (msg.sender != oraclize_cbAddress()) revert();
       ETHUSD = parseInt(result, 4);
       lastUpdateTime = now;
       silvercardinether = silvercard*10**8/ETHUSD;
       goldcardinether = goldcard*10**8/ETHUSD;
       platinumcardinether = platinumcard*10**8/ETHUSD;
       emit LogPriceUpdated(result);
   }
    
        function changeGasPrice(uint256 _gasPriceInWei) public onlyOwner {
        require(_gasPriceInWei > 1000000000);
        gasPrice = _gasPriceInWei;
    }
    
    function silverCardChangeValue(uint256 _value) public onlyOwner{
        
        silvercard = _value;
        silvercardinether = silvercard*10**8/ETHUSD;
    }
    
    function goldCardChangeValue(uint256 _value) public onlyOwner{
        
        goldcard = _value;
        goldcardinether = goldcard*10**8/ETHUSD;
    }
    
    function platinumCardChangeValue(uint256 _value) public onlyOwner{
        
        platinumcard = _value;
        platinumcardinether = platinumcard*10**8/ETHUSD;
    }
    
    function gasFeeTank() public payable onlyOwner{
        balance[msg.sender] += msg.value;
    }
    
    function withdrawGasFee () public onlyOwner returns(bool res) {
        owner.transfer(address(this).balance);
        return true;
    }
    
    function getInfoOfUser(address _user)view public returns(uint256){
       return vault.deposited(_user);
   }

   function getInfo(address buyer) view public returns(uint, string, uint256, uint256){
	return (buyers[buyer].balance, buyers[buyer].cardtype, buyers[buyer].timestamp, buyers[buyer].ETHtoUSD);

   }

    //Allowing owner to transfer the  money rasied to the wallet address
    function withDrawFunds()public onlyOwner{
            
        vault.withdrawToWallet();
    }
}