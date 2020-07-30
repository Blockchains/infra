// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.12;

import "../libs/RealMath.sol";


contract RealMathTester {
    using RealMath for uint216;
    using RealMath for uint256;

    function power(uint216 num, uint216 den, uint256 exp) public pure returns(uint256) {
        return (num.fraction(den)).pow(exp);
    }

    function fraction(uint216 num, uint216 den) public pure returns(uint256) {
        return num.fraction(den);
    }
}
