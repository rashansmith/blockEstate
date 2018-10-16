pragma solidity ^0.4.0;

// contract is similar to class keyword
contract Freelace {
    //int256 counter;  // state variable
    address owner; 
    int256 jobsCreated1;
    int256 jobsCreated2;
    int256 jobsTaken1;
    int256 jobsTaken2;
    int256 reviews1;
    int256 reviews2;
    int256 money1;
    int256 money2;
    
    constructor() public {
        jobsCreated1 = 2;
        jobsCreated2 = 0;
        jobsTaken1 = 2;
        jobsTaken2 = 0;
        reviews1 = 5;
        reviews2 = 5;
        money1 = 400;
        money2 = 400;
        
        owner = msg.sender;
    }
    
    function getCreatedJobs() view public returns (int256) {
        return jobsCreated1;
    }
    
    function getCreatedJobs2() view public returns (int256) {
        return jobsCreated2;
    }
    
    function getTakenJobs() view public returns (int256) {
        return jobsTaken1;
    }
    
    function getTakenJobs2() view public returns (int256) {
        return jobsTaken2;
    }
    
    function getMoney() view public returns (int256) {
        return money1;
    }
    
    
    function getMoney2() view public returns (int256) {
        return money2;
    }
    
    function getReviews() view public returns (int256) {
        return reviews1;
    }
    
    
    function getReviews2() view public returns (int256) {
        return reviews2;
    }
    
    // view - constant function, does not change state
    function createJob1() public {
        jobsCreated1 += 1;
        money1 -= 100;
    }
    
    function createJob2() public {
        jobsCreated2 += 1;
        money1 -= 100;
    }
    
    function takeJob1() public {
        require(msg.sender != owner);
        if(jobsCreated1 != 0) {
            money2 += 100;
            jobsTaken2 += 1;
            reviews2 = (reviews2 + 4) / 2;
        }
    }
        
    function takeJob2() public {
        require(msg.sender != owner);
        if(jobsCreated2 != 0) {
            money1 += 100;
            jobsTaken1 += 1;
            reviews1 = (reviews1 + 4) / 2;
        }
    }
        
        
    }
    
    
