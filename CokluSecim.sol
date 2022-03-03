//SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract CokluOylama {

    struct Sandik {
        uint evet;
        uint hayir;
    }

    mapping(address => mapping(uint => bool)) public _oyVerdiMi;

    mapping(uint => Sandik) public _sandikOylari;

    function oyVer(uint sandikNo, bool oy) public returns (uint) {

        require(!_oyVerdiMi[msg.sender][sandikNo], "Zaten bu sandikta oy kullanmissiniz.");

        if(oy) {
            _sandikOylari[sandikNo].evet++;
        } else {
            _sandikOylari[sandikNo].hayir++;
        }

        _oyVerdiMi[msg.sender][sandikNo] = true;

        return _sandikOylari[sandikNo].evet + _sandikOylari[sandikNo].hayir;
    }
}