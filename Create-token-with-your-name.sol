import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract Vansh is ERC20{
    address public owner;
    string public name;
    string public symbol;
    
    constructor() public {
        owner = msg.sender;
        name = "Vandh Token";
        symbol = "VAN";
        _mint(owner, 100000000);
    }
}
