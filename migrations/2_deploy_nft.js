const NFTItem= artifacts.require("NFTItem");

module.exports = function (deployer) {
  deployer.deploy(NFTItem);
};
