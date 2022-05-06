// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

/// @notice manages auctions. It is used in liquidator.
interface IAuctionHouse {
    event Start(
        uint256 indexed id,
        uint256 startPrice,
        uint256 raiseAmount,
        uint256 sellAmount,
        address indexed vaultOwner,
        address indexed keeper,
        uint256 coin
    );
    event Take(
        uint256 indexed id,
        uint256 max,
        uint256 price,
        uint256 owe,
        uint256 raiseAmount,
        uint256 sellAmount,
        address indexed vaultOwner
    );
    event Redo(
        uint256 indexed id,
        uint256 startPrice,
        uint256 raiseAmount,
        uint256 sellAmount,
        address indexed vaultOwner,
        address indexed keeper,
        uint256 coin
    );

    /// @notice Collateral type of this AuctionHouse
    function collateralType() external view returns (bytes32);

    function bound() external view returns (uint256);

    /// @notice Array of active auction ids
    function list() external view returns (uint256[] memory);

    /// @notice Reset an auction
    function redo(uint256 id, address keeper) external;

    /// @notice Buy up to `amt` of collateral from the auction indexed by `id`.
    ///
    /// Auctions will not collect more KSD than their assigned KSD target,`raiseAmount`;
    // thus, if `amt` would cost more KSD than `raiseAmount` at the current price, the
    // amount of collateral purchased will instead be just enough to collect `raiseAmount` KSD.
    //
    // To avoid partial purchases resulting in very small leftover auctions that will
    // never be cleared, any partial purchase must leave at least `bound`
    // remaining KSD target. `bound` is an asynchronously updated value equal to
    // (Ledger.dust * Liquidator.penalty(ilk) / WAD) where the values are understood to be determined
    // by whatever they were when updateBound() was last called. Purchase amounts
    // will be minimally decreased when necessary to respect this limit; i.e., if the
    // specified `amt` would leave `raiseAmount < bound` but `raiseAmount > 0`, the amount actually
    // purchased will be such that `raiseAmount == bound`.
    //
    // If `raiseAmount <= bound`, partial purchases are no longer possible; that is, the remaining
    // collateral can only be purchased entirely, or not at all.
    function take(
        uint256 id,
        uint256 amt,
        uint256 max,
        address to,
        bytes calldata data
    ) external;

    /// @notice Status of auction sale
    /// @param id id of auction sale
    function getStatus(uint256 id)
        external
        view
        returns (
            bool needsRedo,
            uint256 price, // auction price (ray)
            uint256 sellAmount, // collateral amount
            uint256 raiseAmount // raise amount (ray)
        );
}
