const dotenv = require('dotenv');
const path = require('path');
const fs = require('fs');
dotenv.config();
var Web3 = require('web3').Web3;
const { PRIVATE_KEY, API_KEY, SOLUTION_1 } = process.env;
const web3 = new Web3(`https://eth-goerli.g.alchemy.com/v2/${API_KEY}`);

var bytecode = SOLUTION_1;
var solution = '1';
var abi = require(`./abi/${solution}.json`);

// Second step: add an account to wallet
var account = web3.eth.wallet.add('0x' + PRIVATE_KEY);
console.log('account --->> ', account[0].address);

async function main() {
	try {
		const contract = new web3.eth.Contract(abi);
		console.log('contract --->> ', contract.methods);

		const contractDeployed = await contract
			.deploy({
				input: bytecode,
			})
			.send({
				from: account[0].address,
				gas: '1000000',
			});
		console.log('contract deployed ----->> ', contractDeployed._address);
	} catch (error) {
		console.error(error);
	}
}

main();
