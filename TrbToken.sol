// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title TrbToken
 * `ERC20` functions.
 */
contract TrbToken is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("TRB", "TRB", 6) {
        _mint(msg.sender, 1000000000 * (10 ** uint256(decimals())));
    }
}