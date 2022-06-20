const hre = require("hardhat");

async function main() {
  // We get the contract to deploy
  const Rune = await hre.ethers.getContractFactory("Rune");
  const rune = await Rune.deploy();

  await rune.deployed();

  console.log("Rune deployed to:", rune.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
