const AplusToken = artifacts.require("AplusToken");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("AplusToken", function (accounts) {
  it("should assert true", async function () {
    await AplusToken.deployed();
    return assert.isTrue(true);
  });
});
