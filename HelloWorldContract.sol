//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract HelloWorld {
    string  username;

    constructor (string memory _username){
        username = _username;
    }

    function getLength(string memory _text) private pure returns(uint){
        return bytes(_text).length;
    }

    modifier checkEmptyString(string memory data){
        uint l = getLength(data);
        require(l > 0, "Please enter a string value. Username cannot be empty");        
        _;
    }

    function setUsername(string memory _username) public checkEmptyString(_username) {
        username = _username;
    }

    function sayHelloWorld() public view returns(string memory){
        return string(abi.encodePacked("Hello World! ",username));
    }


}