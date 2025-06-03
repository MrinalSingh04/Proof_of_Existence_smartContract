// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/ProofOfExistence.sol";

contract ProofOfExistenceTest is Test {
    ProofOfExistence poe;

    function setUp() public {
        poe = new ProofOfExistence();
    }

    function testRegisterAndGetDocument() public {
        bytes32 hash = keccak256("TestDocument");
        string memory title = "Test Doc";
        string memory category = "Legal";

        poe.registerDocument(hash, title, category);

        (address owner, string memory t, string memory c, uint256 ts) = poe.getDocument(hash);

        assertEq(owner, address(this));
        assertEq(t, title);
        assertEq(c, category);
        assertGt(ts, 0);
    }

    function testFailDuplicateRegistration() public {
        bytes32 hash = keccak256("TestDocument");
        poe.registerDocument(hash, "Doc", "Cat");
        poe.registerDocument(hash, "Doc", "Cat"); // should fail
    }
}
