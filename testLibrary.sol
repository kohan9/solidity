pragma solidity ^0.4.0;
import "browser/library.sol";
// imort "githum.com/willitscale/solidity/library.sol"

contract TestLibrary {
    using IntExtended for uint;
    
    function testIncrement(uint _base) returns(uint){
        return _base.increment();
        
    }
    function testDecrement(uint _base) returns(uint){
        return _base.decrement();
    }
    function testDecrementByValue(uint _base, uint _value) returns(uint){
        return _base.decrementByValue(_value);
    }
       function testIncrementByValue(uint _base, uint _value) returns(uint){
        return _base.incrementByValue(_value);
    }
}