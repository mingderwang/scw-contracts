// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract MockProtocol {
    function interact(address token, uint256 amount) external {
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        IERC721(token).transferFrom(msg.sender, address(this), amount);
    }
}
