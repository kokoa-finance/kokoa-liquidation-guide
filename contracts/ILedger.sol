// SPDX-License-Identifier: MIT

pragma solidity 0.8.3;

interface ILedger {
    // --- Events ---
    event AccountChanged(
        bytes32 collateralType,
        address vault,
        uint256 lockedCollateral,
        uint256 loan
    );

    /// @notice msg.sender가 usr에게 자신의 vault를 조작할 수 있는 권한을 준다.
    /// @notice authorize usr to manipulate msg.sender's vault
    function allow(address usr) external;

    /// @notice msg.sender가 usr에게 자신의 vault를 조작할 수 있는 권한을 뻇는다.
    /// @notice Deauthorize usr from manipulating msg.sender's vault
    function disallow(address usr) external;

    // --- Data view ---
    /// @notice 담보물 관련 정보
    /// @param collateralType 담보물 타입.
    /// @dev 리턴 값은 순서대로
    /// 1. totalLockedCollateral (전체 locked된 담보물 양)
    /// 2. totalLoan (발행된(빌린) KSD양)
    /// 3. rate (시간에 따라 점차 증가하고, accountInfo.loan 에 곱해져서 사용자가 빌린 ksd의 양을 늘리는 용도로 사용됨. stability fee)
    /// 4. spot (== price * LTV)
    /// 5. line (담보 타입에서 빌릴 수 있는 총 KSD)
    /// 6. dust (하나의 vault에서 빌릴 수 있는 최저의 ksd 양)
    /// (eng)
    /// @notice Collateral Iinfo
    /// @param collateralType Type of collateral - initially, there's only one (Klay)
    /// @dev the value that it returns are
    /// 1. totalLockedCollateral
    /// 2. totalLoan
    /// 3. rate (It gradually increases over time and is multiplied by accountInfo.loan to increase the amount of ksd borrowed by the user.. stability fee)
    /// 4. spot (== price * LTV)
    /// 5. line (Maximum KSD that can be minted from given collateral type)
    /// 6. dust (Minimum KSD that should be borrowed from a CDP)
    function collateralInfo(bytes32 collateralType)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        );

    /// @notice 담보물 관련 정보들 조회
    /// @param collateralTypes 담보물 타입 list
    /// @dev collateralInfo 의 값들을 array 로 return
    function collateralInfos(bytes32[] calldata collateralTypes)
        external
        view
        returns (
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory
        );

    /// @notice usr의 vault 정보
    /// @param collateralType 담보 종류
    /// @param usr 유저의 address
    /// @dev 리턴 값은 순서대로
    /// 1. lockedCollateral (vault에 잠긴 담보물 양)
    /// 2. loan (vault에서 빌린 ksd 양)
    /// (eng)
    /// @notice Information of a user's vault
    /// @param collateralType type of collateral
    /// @param usr Address of the user
    /// @dev returns
    /// 1. lockedCollateral (amount of collateral locked in the user's vault)
    /// 2. loan (normalized amount of KSD minted from that vault)
    function accountInfo(bytes32 collateralType, address usr)
        external
        view
        returns (uint256, uint256);

    /// @notice This function returns the index of a user of given collateral type
    ///         The index
    /// @param collateralType type of collateral
    /// @param usr address of user
    /// @dev 담보물 타입마다 cdp 연 유저를 tracking 하기 위한 것으로, 각 유저가 몇 번째로 cdp를 열었는지를 기록.
    /// @dev This function is designed to track the list of users who have opened a CDP (for each collateral type)
    ///       Since CDPs are never deleted once created, this index should not be update at any circumstances
    function accountIndex(bytes32 collateralType, address usr)
        external
        view
        returns (uint256);

    /// @notice access address of an account by index
    /// @param collateralType type of collateral
    /// @param index index of user
    /// @dev index 번째로 들어온 유저의 주소를 리턴
    /// @dev returns the address of {index}-th CDP opener
    function accountByIndex(bytes32 collateralType, uint256 index)
        external
        view
        returns (address);

    /// @notice Total number of user who have opened a CDP (given collateral type) - always increasing
    /// @param collateralType type of collateral
    /// @dev 지금까지 cdp를 연 유저의 수
    function accountLength(bytes32 collateralType)
        external
        view
        returns (uint256);

    /// @notice locked 되지 않은 담보물의 양. 단, 실제 담보물은 gateway 컨트렉트가 관리하고 있음.
    /// @param collateralType type of collateral
    /// @param usr address of user
    /// @notice The amount of collateral that are not locked.
    function token(bytes32 collateralType, address usr)
        external
        view
        returns (uint256);

    /// @notice 빌리거나, ksdGateway를 통해서 들어온 ksd의 양.
    /// @param usr address of user
    /// @notice The amount of KSD lent to, or depositted by (through KSDGateway) the {usr}
    function ksd(address usr) external view returns (uint256);
}
