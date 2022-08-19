// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AplusToken is ERC20 {
    address public owner = msg.sender;
    uint256 public last_completed_migration;

    constructor() ERC20("Ameta Token", "APLUS") {
        _mint(msg.sender, 1*10**9*10**18);
        owner = msg.sender;
    }
    
    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner" 
        );
        _;
    }

    function setCompleted(uint256 completed) public restricted {
        last_completed_migration = completed;
    }
}
