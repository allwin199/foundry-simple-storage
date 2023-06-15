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
