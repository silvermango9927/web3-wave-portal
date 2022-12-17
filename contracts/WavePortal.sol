// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import 'hardhat/console.sol';

contract WavePortal {
    uint256 totalWaves;
    address name;
    mapping(address => uint256) public interactionCounts;
    uint256 userCounts;

    constructor() {
        console.log('WAHOOO FIRST SMART CONTRACT BABY !!');
        name = msg.sender;
    }
    
    function wave() public {
        totalWaves+=1;
        interactionCounts[msg.sender]++;
        console.log('%s has waved %s time(s)', msg.sender, interactionCounts[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log('We have %d total waves', totalWaves);
        return totalWaves;
    }
}
