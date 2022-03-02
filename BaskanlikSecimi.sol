//SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract BaskanlikSecimi {
    
    mapping(address=>bool) public _oyVerdiMi;
    uint public _toplamOySayisi;
    uint public _toplamEvetSayisi;
    uint public _toplamHayirSayisi;

    function oyVer(bool oy) public returns (uint) {
        require(_oyVerdiMi[msg.sender] == false, "Zaten oy kullanilmis");
        if (oy == true) {
            _toplamEvetSayisi += 1;
        }
        else {
            _toplamHayirSayisi += 1;
        }
       
        _toplamOySayisi += 1;

        _oyVerdiMi[msg.sender] = true;
        
        return _toplamOySayisi;
    }
}