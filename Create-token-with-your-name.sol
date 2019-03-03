import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract Vansh is ERC20{
    address public owner;
    string public name;
    string public symbol;
    
    constructor(string memory _name, string memory _symbol) public {
        owner = msg.sender;
        name = _name;
        symbol = _symbol;
        _mint(owner, 100000000);
    }
}
