pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Dissent} from "../src/Dissent.sol";

contract CounterTest is Test {
    Dissent public dissent;

    function setUp() public {
        dissent = new Dissent();
    }

    function test_tokenURI() public {
        string memory json = dissent.tokenURI(0);
        assertEq(json, '{"name": "Hidden Dissent", "description": "Tokenized version of PDF published by the SCOTUS about Trump\'s eligibility to run that includes evidence of a partial dissent by the liberal justices being erased.", "image": "ipfs://QmWQoKBBVHNWELvkJF7qbuL9xrWtby3ha3gAmGRtePDm1c/", "external_url": "https://www.supremecourt.gov/opinions/23pdf/23-719_19m2.pdf", "animation_url": "ipfs://QmYTEeiAMRM4wm6dhwbpeyADGmBonZYCXbeteAr2cTmqBN/"}');
    }
}
