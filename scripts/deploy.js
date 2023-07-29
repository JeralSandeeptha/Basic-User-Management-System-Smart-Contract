const hre = require("hardhat");

async function main() {
  
  const Persons = await hre.ethers.getContractFactory("Persons");
  const persons = await Persons.deploy();

  await persons.deployed();

  console.log(`Smart contract is deployed in address : ${persons.address}`);
  
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
