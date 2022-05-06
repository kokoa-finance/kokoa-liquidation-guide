// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

/// @notice liquidate collateralized debt position which is not safe
interface ILiquidator {
    // --- Data ---
    struct AuctionInfo {
        address auctionHouse; // Auction House
        uint256 penalty; // Liquidation Penalty [wad]
        uint256 maxAmount; // Max KSD needed to cover debt+fees of active auctions per collateral type [rad]
        uint256 onGoingAmount; // Amt KSD needed to cover debt+fees of active auctions per collateral type [rad]
    }

    // --- Events ---
    event Liquidate(
        bytes32 indexed collateral,
        address indexed account,
        uint256 lockedCollateral,
        uint256 loan,
        uint256 due,
        address auctionHouse,
        uint256 indexed id
    );

    function auctionInfos(bytes32 collateralType)
        external
        view
        returns (
            address,
            uint256,
            uint256,
            uint256
        );

    function penalty(bytes32 collateralType) external view returns (uint256);

    /// @notice liquidate a Vault and start a Dutch auction to sell its collateral for KSD.
    ///
    /// The entire Vault will be liquidated except when the target amount of KSD to be raised in
    /// the resulting auction (debt of Vault + liquidation penalty) causes either totalOnGoingAmount to exceed
    /// totalMaxAmount or collateral.onGoingAmount to exceed collateral.maxAmount by an economically significant amount. In that
    /// case, a partial liquidation is performed to respect the global and per-collateral limits on
    /// outstanding KSD target. The one exception is if the resulting auction would likely
    /// have too little collateral to be interesting to Keepers (debt taken from Vault < collateral.dust),
    /// in which case the function reverts. Please refer to the code and comments within if
    /// more detail is desired.
    /// @param collateralType type of collateral in vault to liquidate
    /// @param vaultAddr address of vault to liquidate
    /// @param keeper address that will receive incentives
    function liquidate(
        bytes32 collateralType,
        address vaultAddr,
        address keeper
    ) external returns (uint256 id);
}
