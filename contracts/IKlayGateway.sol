// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

/// @title Klay input/output contract
/// @notice Functions to be called by user
interface IKlayGateway {
    /// @notice Send klay to bklay contract, record on ledger.
    function stake() external payable;

    /// @notice Send aklay to bklay contract, record on ledger.
    function stakeAKlay(uint256 amount) external;

    /// @notice Loan ksd with klay as collateral.
    function borrow(uint256 collateralAmount, uint256 loanAmount) external;

    /// @notice Execute stake and borrow functions at the same time.
    function stakeAndBorrow(uint256 amount) external payable;

    /// @notice Execute stake and borrow functions at the same time.
    function stakeAKlayAndBorrow(uint256 aklayAmount, uint256 ksdAmount)
        external;

    /// @notice Execute unstake to get the entrusted klay back.
    function unstake(uint256 amount) external;

    /// @notice Execute unstake to get BKlay back.
    function unstakeInBKlay(uint256 amount) external;

    /// @notice Return a returnable klay to the user.
    function claimKlay(address usr) external;

    /// @notice Return ksd and unlock collateral (klay)
    function repay(uint256 collateralAmount, uint256 loanAmount) external;

    /// @notice Return ksd and unlock collateral (klay)
    function repayAll(uint256 collateralAmount) external;

    /// @notice Execute repay and unstake functions at the same time.
    function repayAndUnstake(uint256 collateralAmount, uint256 loanAmount)
        external;

    /// @notice Execute repay and unstake functions at the same time.
    function repayAllAndUnstake(uint256 collateralAmount) external;
}
