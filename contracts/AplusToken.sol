// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AplusToken is ERC20{
  address public owner = msg.sender;
  uint public last_completed_migration;
  constructor(uint256 initialSupply) ERC20("APLUS Token", "APLUS") {
        _mint(msg.sender, initialSupply);
    }

  modifier restricted() {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
