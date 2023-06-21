// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol"; // from the lib directory
import {SimpleStorage} from "../src/SimpleStorage.sol"; // actual contract

// DeploySimpleStorage is inheriting Script
contract DeploySimpleStorage is Script {
    //run() is the main entry point
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

////////////////////////////////////////

// To deploy the contract using terminal
// forge script script/DeploySimpleStorage.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY  --broadcast
// It will return the contract deployed address.
// Using this address and abi we can interact with the contract.

////////////////////////////////////////

// To interact with the contract
// cast send ${contract_address} "store(uint256)" ${value} --rpc-url ${rpc_url} --private-key {private_key}
// cast --> Sign and publish a transaction
// we are sending the transaction to contract address
// we are using the function call store which takes uint256
// finally the value we want to send.

////////////////////////////////////////

// now we have to stored a value using cast send
// to retrieve the value we have to use cast call

////////////////////////////////////////

// cast call ${contract_address} "showFavouriteNumber()" --rpc-url ${rpc_url} --private-key {private_key}
// we will get the hex value back
// cast --to-base ${hex} dec
// we are converting the hex value to decimal

////////////////////////////////////////

// Make sure to use keystore for accessing the private keys
