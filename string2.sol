pragma solidity ^0.4.0;
library Strings{
    function concat(string _base, string _expand) internal returns (string){
        bytes memory _bytebase = bytes(_base);
        bytes memory _byteexpand = bytes(_expand);
        
        string memory _newstring = new string(_bytebase.length + _byteexpand.length);
        bytes memory _bytestring = bytes(_newstring);
        
        uint i;
        uint j;
        
        for(i=0; i<_bytebase.length;i++){
            _bytestring[j++] = _bytebase[i]; 
        }
        
        for(i=0; i<_byteexpand.length;i++){
            _bytestring[j++] = _byteexpand[i]; 
        }
        
        return string(_bytestring);
    }
    function strpos(string _base, string _kitu) returns (int){
        bytes memory _bytebase = bytes(_base);
        bytes memory _bytekitu = bytes(_kitu);
        require(_bytekitu.length ==1);
        for(uint i = 0; i < _bytebase.length ; i++){
            if(_bytebase[i] == _bytekitu[0]){
                return int(i);
            }
        }
        return -1;
    }
}

contract usingstring{
    using Strings for string;
    function getconcat(string _base,string _expand) returns (string){
        return _base.concat("_expand");
    }
    function getstrpos(string _base, string _kitu) returns (int){
        return _base.strpos('t');
    }
}