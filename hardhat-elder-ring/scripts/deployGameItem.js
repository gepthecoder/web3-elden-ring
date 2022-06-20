const hre = require("hardhat");

async function main() {
  // We get the contract to deploy
  const GameItem = await hre.ethers.getContractFactory("GameItem");
  const gameitem = await GameItem.deploy();

  await gameitem.deployed();

  console.log("GameItem deployed to:", gameitem.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
