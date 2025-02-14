// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Contract is ERC20 {
    uint256 public number;

    constructor() ERC20("Mytoken", "myt") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
