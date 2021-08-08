// SPDX-License-Identifier: MIT
pragma solidity >=0.8.6;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/GameItems.sol";

contract TestGameItems {

  function testInitialBalanceUsingDeployedContract() public {
    GameItems gameItems = GameItems(DeployedAddresses.GameItems());
    Assert.equal(gameItems.balanceOf(tx.origin, 2), 1, "There should be only one hammer");
  }
}
