// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ProofOfExistence {
    struct Document {
        address owner;
        string title;
        string category;
        uint256 timestamp;
    }

    mapping(bytes32 => Document) public documents;

    event DocumentRegistered(
        address indexed owner, bytes32 indexed hash, string title, string category, uint256 timestamp
    );

    function registerDocument(bytes32 docHash, string calldata title, string calldata category) external {
        require(documents[docHash].timestamp == 0, "Document already registered");

        documents[docHash] = Document({owner: msg.sender, title: title, category: category, timestamp: block.timestamp});

        emit DocumentRegistered(msg.sender, docHash, title, category, block.timestamp);
    }

    function isDocumentRegistered(bytes32 docHash) external view returns (bool) {
        return documents[docHash].timestamp != 0;
    }

    function getDocument(bytes32 docHash)
        external
        view
        returns (address owner, string memory title, string memory category, uint256 timestamp)
    {
        Document memory doc = documents[docHash];
        require(doc.timestamp != 0, "Document not found");
        return (doc.owner, doc.title, doc.category, doc.timestamp);
    }
}
