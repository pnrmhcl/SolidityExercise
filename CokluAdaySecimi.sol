//SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract CokluSecim {

    struct Sandik {
        uint pinar;
        uint tayyip;
    }

    mapping(address => mapping(uint => bool)) public _oyVerdiMi;
    mapping(uint => Sandik) public _sandikOylari;

    function pinarOyVer(uint sandikNo, bool oy) public returns (uint) {

        require(!_oyVerdiMi[msg.sender][sandikNo], "Zaten bu sandikta oy kullanmissiniz.");

        if(oy) {
            _sandikOylari[sandikNo].pinar++;
        }else {
            _sandikOylari[sandikNo].pinar++;
        }

        _oyVerdiMi[msg.sender][sandikNo] = true;

        return _sandikOylari[sandikNo].pinar +_sandikOylari[sandikNo].tayyip;
    }

    function tayyipOyVer(uint sandikNo, bool oy) public returns (uint) {
        require(!_oyVerdiMi[msg.sender][sandikNo], "Zaten bu sandikta oy kullanmissiniz.");

        if(oy) {
            _sandikOylari[sandikNo].tayyip++;
        }else {
            _sandikOylari[sandikNo].tayyip++;
        }

        _oyVerdiMi[msg.sender][sandikNo] = true;

        return _sandikOylari[sandikNo].pinar +_sandikOylari[sandikNo].tayyip;
    }
}