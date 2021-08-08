const GameItems = artifacts.require("GameItems");

contract('GameItems', (accounts) => {
  it('There should be 1 hammer', async () => {
    const gameItems = await GameItems.deployed();
    const balance = await gameItems.balanceOf.call(accounts[0], 2);

    assert.equal(balance.valueOf(), 1, "1 hammer expected");
  });
});
