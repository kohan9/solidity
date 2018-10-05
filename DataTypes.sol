pragma solidity ^0.4.0;
contract DataTypes{
    bool yesOrNow = false;
    int256 myInt = -128;
    uint8 myUint =255;
    string myString;
    uint[] myStringArr;
    
    
    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;
    
//    fixed256x8 myFixed = 128;
  //  ufixed myFixed 1;
    // enum Action = {ADD, REMOVE, UPDATE}
    
    //Action myAction = Action.ADD; 
    address myAddress;
    
    function assignAddress(){
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
        
    }
    
    uint[] myIntArray =[1,2,3];
    function arrFunc(){
        myIntArray.push(1);
        myIntArray.length;
        myIntArray[0];
        
    }
    uint[10] myFixedArr;
    struct Account {
        uint balance;
        uint dailyLimit;
    }
    Account myAccount;
    function structFunc(){
        myAccount.balance=100;
        
    }
    mapping (address => Account) _account;
    function mappFun() payable{
        _account[msg.sender].balance += msg.value;
        
    }
    function getBalance() returns (uint){
        return _account[msg.sender].balance;
    }
    
    
}