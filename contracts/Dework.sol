// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import {Freelancerprofile} from "contracts/types/DeWorkTypes.sol";
import {Employerprofile} from "contracts/types/DeWorkTypes.sol";

contract Dework{
    uint256 connectFee = 100; // state variables
    address public initialOwner;
    Freelancerprofile[] public freelancerprofiles;
    Employerprofile[] public employerprofiles;

    constructor(address _initialOwner) {
        initialOwner = _initialOwner;
    }

    function registerEmployerProfile(
        string calldata _name
    ) external {
        uint256 employerId = getNumberOfEmployers();

        Employerprofile memory employerprofile = Employerprofile({
            id: employerId,
            name: _name,
            wallet: msg.sender,
            isHiring:true
        });
        employerprofiles.push(employerprofile);

    }

    function registerFreelancerProfile(
        string calldata _name,
        uint8 yoe,
        uint256 hourlyRateWei
    ) external  {
        uint256 freelancerId =  getNumberOfFreelancers();

        Freelancerprofile memory freelancerprofile = Freelancerprofile({
            id: freelancerId,
            name: _name,
            wallet: msg.sender,
            yoe: yoe,
            isAvailableHire: true,
            hourlyRateWei: hourlyRateWei

    });

    freelancerprofiles.push(freelancerprofile);

       
    }

    function getNumberOfFreelancers() public view returns(uint256){
       return freelancerprofiles.length;
    }

    function getNumberOfEmployers() public view returns(uint256){
       return employerprofiles.length;
    }

    function  getEmployerProfiles() public view returns(Employerprofile[] memory) {
         return employerprofiles;
    }

    function  getFreelancerProfiles() public view returns(Freelancerprofile[] memory) {
         return freelancerprofiles;
    }

    function updateHourlyRate() public {
       
    }

    //function getFreelancerId() public returns(uint24){
    //    uint24 freelancerId=10;

     //   return freelancerId;
    //}

}
