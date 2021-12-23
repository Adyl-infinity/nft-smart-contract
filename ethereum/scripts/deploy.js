const { ethers } = require("hardhat")

async function main() {
    const Dektry = await ethers.getContractFactory("Dektry");
    const dektry = await Dektry.deploy();

    console.log("Dektry deployed:", dektry.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });