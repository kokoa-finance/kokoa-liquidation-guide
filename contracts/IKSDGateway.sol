// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

/// @title KSD input/output contract
/// @notice A collection of functions related to KSD move
interface IKSDGateway {
    /// @notice ksd redemption & ksd burn
    function join(address usr, uint256 wad) external;

    /// @notice ksd mint & borrow ksd (loan)
    function exit(address usr, uint256 wad) external;
}
