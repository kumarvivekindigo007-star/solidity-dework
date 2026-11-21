// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

struct Freelancerprofile {
    uint256 id;
    string name;
    address wallet;
    uint8 yoe;
    bool isAvailableHire;
    uint256 hourlyRateWei; //1 eth = 10^18 wei 
}

struct Employerprofile {
    uint256 id;
    string name;
    address wallet;
    bool isHiring;
}

