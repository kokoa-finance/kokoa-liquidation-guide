// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

import "./kip/IKIP7Extended.sol";

/// @title Bonded Klay Contract
/// @notice Mint/Burn logic of Bklay via klay
interface IBKlay is IKIP7Extended {
    event UnstakeKlay(address from, address to, uint256 amount);
    event WithdrawToken(address from, address to, uint256 amount);
    event ClaimKlay(address usr, uint256 amount);

    /// @notice Stake klay to yield factory, mint bklay.
    /// @dev Owner of klay is 'to'.
    /// @param to Owner of klay.
    function stakeKlay(address to) external payable;

    /// @notice Stake aklay to yield factory, mint bklay.
    /// @dev Owner of aklay is 'to'.
    /// @param to Owner of aklay.
    function stakeAKlay(address to, uint256 amount) external;

    /// @notice Unstake klay from yield factory, burn bklay.
    /// @dev The function that executes unstake.
    /// @dev Unstake takes 7 days to complete.
    /// @dev Owner of klay is 'to'.
    /// @param to Owner of klay.
    /// @param amount Amount of klay to unstake.
    function unstakeKlay(address to, uint256 amount) external;

    /// @notice Withdraw aklay
    /// @param to Receiver.
    /// @param amount Amount of bklay to unstake.
    function withdrawToken(address to, uint256 amount) external;

    /// @notice Unstaking status for all yields.
    /// @param usr Owner of klay where unstaking was executed.
    /// @return completed Amount of klay that can be claimed after 7 days of unstake.
    /// @return yet Amount of klay that cannot be claimed as 7 days have not yet passed since unstake.
    function pendingKlay(address usr)
        external
        view
        returns (uint256 completed, uint256 yet);

    /// @notice Claim on every yield, send claimed klay to user.
    /// @param usr Address of the user who executes the claim.
    function claimKlay(address usr) external;
}
