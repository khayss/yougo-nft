// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {YougoNFT} from "../src/YougoNFT.sol";

contract DeployYougoNFT is Script {
    YougoNFT public yougoNFT;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        yougoNFT = new YougoNFT(0xDaB8892C07FB4C362Dd99D9a2fBFf8B555D39Cb5);

        vm.stopBroadcast();
    }
}
