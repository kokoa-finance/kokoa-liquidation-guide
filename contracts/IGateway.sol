// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

/// @title Collateral input/output contract
interface IGateway {
    /// @notice collateral type of this gateway
    function COLLATERAL_TYPE() external view returns (bytes32);

    /// @notice Send token to bond contract, record on ledger.
    /// @dev User should call approve function of token before calling this function
    /// @return bondAmount amount of bond token corresponding to staked token
    function stake(uint256 tokenAmount) external returns (uint256 bondAmount);

    /// @notice Execute stake and borrow functions at the same time.
    /// @dev User should call approve before calling this function
    /// @param tokenAmount Amount of token to stake.
    /// @param loanAmount Amount of ksd to borrow (loan).
    function stakeAndBorrow(uint256 tokenAmount, uint256 loanAmount) external;

    /// @notice Execute unstake to get the entrusted token back.
    /// @param bondAmount Amount of bond to unbond.
    function unstake(uint256 bondAmount) external;

    /// @notice Execute repay and unstake functions at the same time.
    /// @dev Unstake is executed after repay is executed.
    /// @param bondAmount Amount of bond that was entrusted as collateral.
    /// @param loanAmount Amount of ksd borrowed (loan).
    function repayAndUnstake(uint256 bondAmount, uint256 loanAmount) external;

    /// @notice Execute repayAll and unstake functions at the same time.
    /// @dev Unstake is executed after repay is executed.
    /// @param bondAmount Amount of bond that was entrusted as collateral.
    function repayAllAndUnstake(uint256 bondAmount) external;
}
