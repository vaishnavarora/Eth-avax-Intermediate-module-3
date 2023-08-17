
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    address public owner;

    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Mint(address indexed to, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor(string memory _name, string memory _symbol) {
        owner = msg.sender;
        tokenName = _name;
        tokenSymbol = _symbol;
    }

    function mint(address _to, uint256 _value) public onlyOwner {
        totalSupply += _value;
        balances[_to] += _value;

        emit Mint(_to, _value);
        emit Transfer(address(0), _to, _value);
    }

    function burn(uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");

        totalSupply -= _value;
        balances[msg.sender] -= _value;

        emit Burn(msg.sender, _value);
        emit Transfer(msg.sender, address(0), _value);
    }

    function transfer(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid recipient address");
        require(balances[msg.sender] >= _value, "Insufficient balance");

        balances[msg.sender] -= _value;
        balances[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
    }
}
