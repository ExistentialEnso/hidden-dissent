pragma solidity ^0.8.13;
import "erc721a/contracts/ERC721A.sol";

contract Dissent is ERC721A {
    constructor() ERC721A("Hidden Dissent", "HDNDST") {
        _mint(msg.sender, 1);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return '{"name": "Hidden Dissent", "description": "Tokenized version of PDF published by the SCOTUS about Trump\'s eligibility to run that includes evidence of a partial dissent by the liberal justices being erased.", "image": "ipfs://QmWQoKBBVHNWELvkJF7qbuL9xrWtby3ha3gAmGRtePDm1c/", "external_url": "https://www.supremecourt.gov/opinions/23pdf/23-719_19m2.pdf", "animation_url": "ipfs://QmYTEeiAMRM4wm6dhwbpeyADGmBonZYCXbeteAr2cTmqBN/"}';
    }
}
