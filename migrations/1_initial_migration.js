const AplusToken = artifacts.require("AplusToken");

module.exports = function (deployer) {
  deployer.deploy(new AplusToken(10000));
};
