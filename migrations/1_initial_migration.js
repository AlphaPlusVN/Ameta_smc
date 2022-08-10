const AplusToken = artifacts.require("AplusToken");

module.exports = function (deployer) {
  deployer.deploy(AplusToken, 10000);
};
