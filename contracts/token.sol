pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract Lab6token is ERC20("Labka6TestToken", "LAB6T"), Ownable {
    
    constructor(address initialOwner) Ownable(initialOwner) {}

    function mintFifty() public onlyOwner {
        _mint(msg.sender, 50 * 10**18);
    }
}
