//SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract AdaySecim {
    mapping(address=>bool) public _oyVerdiMi;
    uint public _toplamOySayisi;
    uint public _pinar;
    uint public _tayyip;

    function pinarOyVer(bool oy) public returns (uint) {
        require(_oyVerdiMi[msg.sender] == false, "Zaten oy kullanmis.");
        if (oy == true) {
            _pinar +=1;
        }
        else {
            _pinar += 1;
        }
        _toplamOySayisi += 1;

        _oyVerdiMi[msg.sender] = true;

         return _toplamOySayisi;
    }
    function tayyipOyVer(bool oy) public returns (uint) {
        require(_oyVerdiMi[msg.sender] == false, "Zaten oy kullanmis.");
        if (oy == true) {
            _tayyip += 1;
        }
        else {
            _tayyip += 1;
        }
        _toplamOySayisi += 1;

        _oyVerdiMi[msg.sender] = true;

        return _toplamOySayisi;
    }
}