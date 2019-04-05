pragma solidity ^0.5.6;

import "ds-math/math.sol";

interface IToken {
    function transfer(address, uint) external returns (bool);
}

contract DsproxyPlayground is DSMath {
    function delegateTransfer(address _token, uint256 _value) public {
        IToken token = IToken(_token);

        token.transfer(address(0), _value);
    }
}