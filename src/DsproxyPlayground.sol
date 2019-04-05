pragma solidity ^0.5.6;

import "ds-math/math.sol";

interface IToken {
    function transfer(address, uint) external returns (bool);
    function transferFrom(address, address, uint) external returns (bool);
}

contract DsproxyPlayground is DSMath {
    function delegateTransfer(address _token, uint256 _value) public {
        IToken token = IToken(_token);

        require(token.transferFrom(msg.sender, address(0), _value));
    }
}