pragma solidity ^0.4.0;
import "browser/ERC20.sol";
contract MyFirstToken is ERC20, Toke() {
    string public constant symbol = "TKH";
    string public constant name = "Token Khanh";
    uint8 public constant decimals  = 18;
    uint private constant __totalSupply = 1000;
    mapping(address => uint) _balanceOf;
    mapping(address => mapping(address => uint)) _alowance;
    
    
    function Token(string symbol,string name, uint8 decimals, uint totalSupply) public{
        
    }
    
    function totalSupply() constant returns (uint _totalSupply){
        _totalSupply = __totalSupply;
    }
 
    
    function _transfer(address _from, address _to, uint _value) returns (bool success){
        require(_to != 0x0);
        require(_balanceOf[_from] >= _value);
        require((_balanceOf[_to] + _value) >= _balanceOf[_to]);
        uint previousBalances = _balanceOf[_from] + _balanceOf[_to];
        _balanceOf[_to] += _value;
        _balanceOf[_from] -= _value;
        assert((_balanceOf[_from] + _balanceOf[_to]) == previousBalances);
    }
    function transfer(address _to, uint _value) returns (bool success){
        _transfer(msg.sender, _to, _value);
        return true;
        
    }
    function transferFrom(address _from, address _to, uint _value) returns (bool success){
        require(_value <= _alowance[_from][msg.sender]);
        _alowance[_from][msg.sender] -= _value;
        _transfer(_from,_to,_value);
        return true;
        
    }
    function approve(address _spender, uint _value) returns (bool success){
        _alowance[msg.sender][_spender] = _value;
        return true;
    }
}