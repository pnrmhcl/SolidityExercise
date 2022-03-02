//SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

contract BasitOylama {

    function veTest(bool deger1, bool deger2) public pure returns(bool) {
        return deger1&&deger2;
    }
    function esitTest(uint sayi1, uint sayi2) public pure returns(bool) {
        return sayi1 == sayi2;
    }
    function usHesaplama(uint a, uint b) public pure returns(uint) {
        return a ** b;
    }
    function ucgenAlanHesaplama(uint taban, uint yukseklik) public pure returns(uint) {
        return taban*yukseklik/2;
    }
    function daireAlanHesaplama(uint r)public pure returns(uint) {
        return 314 * 10**16 * (r**2);
    }
    function TopluIslem(uint sayi1) public pure returns(uint) {
        uint sayi2 = sayi1 * 3;
        uint sayi3 = sayi1 + sayi2;
        uint sayi4 = sayi2 * sayi3;
        return sayi4 - sayi3 / sayi2;


    }
}