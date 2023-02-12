// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Mappings : DataStructures in form of key-value pairs. Similar to hash table or dictionary

contract MyContract {
    //Mappings
    // mapping(key => value) myMapping;

    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;      //mapping of uint to structure. Behaves like a local databae.
    struct Book {
        string title;
        string author;
    }

    mapping(address =>mapping(uint256 => Book)) public NestedBooks;   //nested mapping

    constructor() {
        names[1] = "adam";
        names[2] = "bruce";
        names[3] = "karl";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author); //_title (underscore first) is convention for local variables
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    )public{ 
        NestedBooks[msg.sender][_id] = Book(_title,_author);
    }
}
