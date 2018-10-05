pragma solidity ^0.4.16;
interface ERC20{
    function totalSupply() constant returns (uint _totalSupply);
    function _transfer(address _from, address _to, uint _value) returns (bool success);
    function transfer(address _to, uint _value) returns (bool success);
    function transferFrom(address _from, address _to, uint _value) returns (bool success);
    function approve(address _spender, uint _value) returns (bool success);
    
    
}