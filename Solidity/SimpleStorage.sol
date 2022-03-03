//SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract BasitDepolama{

    uint depoladigimDeger;

    function degerSakla(uint x)public{
        depoladigimDeger = x;
    }
    function degerGetir() public view returns (uint){
        return depoladigimDeger;
    }   
}