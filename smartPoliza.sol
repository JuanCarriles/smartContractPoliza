pragma solidity ^0.5.0;

contract SimpleStorage {

    event ValueChanged(address indexed author, string oldValue, string newValue);

    string storedValue;

    constructor(string memory newValue) public {
        emit ValueChanged(msg.sender, storedValue, newValue);
        storedValue = newValue;
    }

    function getValue() public view returns (string memory value) {
        return storedValue;
    }

    function setValue(string memory newValue) public {
        emit ValueChanged(msg.sender, storedValue, newValue);
        storedValue = newValue;
    }
}
