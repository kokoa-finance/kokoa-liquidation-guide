# 사용되는 컨트랙트

## BKlay

- Staked klay
- Klay로 unstake하고 7일 후 수령하거나 AKlay로 unstake하고 즉시 수령할 수 있음
- Interfaces
  - BKlay: [IBKlay.sol](contracts/IBKlay.sol)
- Addresses
  - BKlay: [0xA2488A7A0c800bD0E002b6b0Fa7A28d8FCf63659](https://scope.klaytn.com/account/0xA2488A7A0c800bD0E002b6b0Fa7A28d8FCf63659)

## Gateway

- 자산 입출금이 이루어지며 입금된 자산이 보관되는 컨트랙트
- 담보물마다 하나씩 존재함
- KSD gateway도 존재함
- Interfaces
  - KSD Gateway: [IKSDGateway.sol](contracts/IKSDGateway.sol)
  - KLAY Gateway: [IKlayGateway.sol](contracts/IKlayGateway.sol)
  - 그외 담보물의 Gateway: [IGateway.sol](contracts/IGateway.sol)
- Addresses
  - KSD Gateway: [0x8500c40F9FEeB3f4D300D73113E10A22226632ad](https://scope.klaytn.com/account/0x8500c40F9FEeB3f4D300D73113E10A22226632ad)
  - Normal Collaterals
    - KLAY Gateway: [0x7087D5A9e3203D39Ec825d02D92F66ED3203b18a](https://scope.klaytn.com/account/0x7087D5A9e3203D39Ec825d02D92F66ED3203b18a)
    - WEMIX Gateway: [0x49a83215594098aEa40633188A7672C173e8812a](https://scope.klaytn.com/account/0x49a83215594098aEa40633188A7672C173e8812a)
    - KWBTC Gateway: [0x228448806349C9929d58Bdb5d12868fDd53dae73](https://scope.klaytn.com/account/0x228448806349C9929d58Bdb5d12868fDd53dae73)
    - KETH Gateway: [0x5722fBacf3be79E4b93B4807815f7d1F410CD6A7](https://scope.klaytn.com/account/0x5722fBacf3be79E4b93B4807815f7d1F410CD6A7)
    - KXRP Gateway: [0x7C6E6241C0181919951443306E71Ad1A1cD827ba](https://scope.klaytn.com/account/0x7C6E6241C0181919951443306E71Ad1A1cD827ba)
    - KSP Gateway: [0x07fd80431458FeF55Ca69E98F97721572ea3C1Ed](https://scope.klaytn.com/account/0x07fd80431458FeF55Ca69E98F97721572ea3C1Ed)
    - KORC Gateway: [0xBf18853DaE62E29A4548BcD60ad0Ed08E5e79533](https://scope.klaytn.com/account/0xBf18853DaE62E29A4548BcD60ad0Ed08E5e79533)
    - KDAI Gateway: [0xeB9b0526Ac8faFc3fF8Fe8c1Ea7Dd504F3695090](https://scope.klaytn.com/account/0xeB9b0526Ac8faFc3fF8Fe8c1Ea7Dd504F3695090)
    - KUSDT Gateway: [0xaEE24956F6CCC58deaC3C49DDb65a5c72D8bdd30](https://scope.klaytn.com/account/0xaEE24956F6CCC58deaC3C49DDb65a5c72D8bdd30)
    - KUSDC Gateway: [0x623A1514A4a334841DA842810bd20bcBC0a363bF](https://scope.klaytn.com/account/0x623A1514A4a334841DA842810bd20bcBC0a363bF)
  - KLEVA Collaterals
    - ibKDAI Gateway: [0xd13F0f83e78245D390ED48304aa13793fE50Dd91](https://scope.klaytn.com/account/0xd13F0f83e78245D390ED48304aa13793fE50Dd91)
    - ibKUSDT Gateway: [0x719248CE50830bea2C6EEe47683fa883e9457FA7](https://scope.klaytn.com/account/0x719248CE50830bea2C6EEe47683fa883e9457FA7)
  - KLAYswap LP Collaterals
    - KUSDT-KDAI Gateway: [0xf0CabdA0d4fdaC25703863A1d5cA81a0ee876492](https://scope.klaytn.com/account/0xf0CabdA0d4fdaC25703863A1d5cA81a0ee876492)
    - KUSDT-KUSDC Gateway: [0xc52e301da484A66F2196605C6D28259E3213126a](https://scope.klaytn.com/account/0xc52e301da484A66F2196605C6D28259E3213126a)
    - KLAY-KDAI Gateway: [0xC4F8eE0553CF79785EB6Ebd5A166D77e151752E3](https://scope.klaytn.com/account/0xC4F8eE0553CF79785EB6Ebd5A166D77e151752E3)
    - KETH-KUSDT Gateway: [0xd271491967a681b84265437e605708cd19312f68](https://scope.klaytn.com/account/0xd271491967a681b84265437e605708cd19312f68)
    - KXRP-KDAI Gateway: [0x5874Fc03eB5cAf6371a333E2528b59bf7062acE1](https://scope.klaytn.com/account/0x5874Fc03eB5cAf6371a333E2528b59bf7062acE1)
    - KSP-KUSDT Gateway: [0x661FD032FEfA4Ab1A5cFc4B7014B9C32c76Cb747](https://scope.klaytn.com/account/0x661FD032FEfA4Ab1A5cFc4B7014B9C32c76Cb747)
    - KORC-KDAI Gateway: [0x2fB368EE9FDC96B46F692DdB46E5b47DEc59df28](https://scope.klaytn.com/account/0x2fB368EE9FDC96B46F692DdB46E5b47DEc59df28)
  - Leveraged Collaterals
    - Leveraged KLAY Gateway: [0xF097D84a74d9E2fEAeE2C8F5Ee7be4826D37edd1](https://scope.klaytn.com/account/0xF097D84a74d9E2fEAeE2C8F5Ee7be4826D37edd1)
    - Leveraged WEMIX Gateway: [0xdbF39E13A012D69611c4A4eD7848b16cAda72875](https://scope.klaytn.com/account/0xdbF39E13A012D69611c4A4eD7848b16cAda72875)
    - Leveraged KWBTC Gateway: [0x8aC5A1d6C558015C5253D50e9DA43dD2ee12C419](https://scope.klaytn.com/account/0x8aC5A1d6C558015C5253D50e9DA43dD2ee12C419)
    - Leveraged KETH Gateway: [0x62b71B7859dd9DDeaa1eD5fa118cc8dFDD6B450F](https://scope.klaytn.com/account/0x62b71B7859dd9DDeaa1eD5fa118cc8dFDD6B450F)
    - Leveraged KXRP Gateway: [0xD0F8c447684ae70732e674C2D5AeB33CEdB370De](https://scope.klaytn.com/account/0xD0F8c447684ae70732e674C2D5AeB33CEdB370De)
    - Leveraged KSP Gateway: [0x6d7950dA167816c3593030873108177AFb31461F](https://scope.klaytn.com/account/0x6d7950dA167816c3593030873108177AFb31461F)
    - Leveraged KORC Gateway: [0x0eDaa20Cd263013DF35aD74DeA4517A0afe7ba4A](https://scope.klaytn.com/account/0x0eDaa20Cd263013DF35aD74DeA4517A0afe7ba4A)
    - Leveraged KDAI Gateway: [0x36f41464a7BEae7780eDa574626e5a96F4f0ED99](https://scope.klaytn.com/account/0x36f41464a7BEae7780eDa574626e5a96F4f0ED99)
    - Leveraged KUSDC Gateway: [0xe60A053E48d8763a5712859b1d2465652eb138C2](https://scope.klaytn.com/account/0xe60A053E48d8763a5712859b1d2465652eb138C2)
    - Leveraged XKUSDT Gateway: [0x5Fe3733ec4b26d62C31bE46ab60FfCaF41457B94](https://scope.klaytn.com/account/0x5Fe3733ec4b26d62C31bE46ab60FfCaF41457B94)

## Ledger

- 모든 자산 내역을 기록하는 컨트랙트
- Interfaces
  - Ledger: [ILedger.sol](contracts/ILedger.sol)
- Addresses
  - Ledger: [0x1242ECA3F543699173d1fAEc299552fAb65E0924](https://scope.klaytn.com/account/0x1242ECA3F543699173d1fAEc299552fAb65E0924)

## AuctionHouse

- 청산된 물량에 대한 경매가 진행되는 컨트랙트
- 담보물마다 하나씩 존재함
- Interfaces
  - AuctionHouse: [IAuctionHouse.sol](contracts/IAuctionHouse.sol)
- Addresses
  - Normal Collaterals
    - KLAY AuctionHouse: [0x49DA06AFcc4115FB9721590b8cB55255f68Df960](https://scope.klaytn.com/account/0x49DA06AFcc4115FB9721590b8cB55255f68Df960)
    - WEMIX AuctionHouse: [0xd8ba4C6c81d85A90A4FdD6253674868d7829ef7a](https://scope.klaytn.com/account/0xd8ba4C6c81d85A90A4FdD6253674868d7829ef7a)
    - KWBTC AuctionHouse: [0x169254a5b8A86444eB9736632aD3cBE93715c441](https://scope.klaytn.com/account/0x169254a5b8A86444eB9736632aD3cBE93715c441)
    - KETH AuctionHouse: [0x47f340534080BB6A8b5304A7b41cF45a7dDA7d38](https://scope.klaytn.com/account/0x47f340534080BB6A8b5304A7b41cF45a7dDA7d38)
    - KXRP AuctionHouse: [0x8bb51Ec0eF3DC6653e131615595E0fe9fF137519](https://scope.klaytn.com/account/0x8bb51Ec0eF3DC6653e131615595E0fe9fF137519)
    - KSP AuctionHouse: [0xc4eaf393e474b4fAc68A14A743f8F7F05F947ac0](https://scope.klaytn.com/account/0xc4eaf393e474b4fAc68A14A743f8F7F05F947ac0)
    - KORC AuctionHouse: [0x4Bd2849324a613231AAC3a9ceE44bDE0e8ec3Bf9](https://scope.klaytn.com/account/0x4Bd2849324a613231AAC3a9ceE44bDE0e8ec3Bf9)
    - KDAI AuctionHouse: [0x7DA3c41DC0b58C59d6EecF7daD5cfD5a8F969fE6](https://scope.klaytn.com/account/0x7DA3c41DC0b58C59d6EecF7daD5cfD5a8F969fE6)
    - KUSDT AuctionHouse: [0xFE174E7006926b261063c3d6438885A0a39efEb5](https://scope.klaytn.com/account/0xFE174E7006926b261063c3d6438885A0a39efEb5)
    - KUSDC AuctionHouse: [0xD28d9a60f32650B1947f33cc42ea128d7f1632fd](https://scope.klaytn.com/account/0xD28d9a60f32650B1947f33cc42ea128d7f1632fd)
  - KLEVA Collaterals
    - ibKDAI AuctionHouse: [0x2Ea5dD37c59d4f5466684562c8b1C84C8Bb053Ac](https://scope.klaytn.com/account/0x2Ea5dD37c59d4f5466684562c8b1C84C8Bb053Ac)
    - ibKUSDT AuctionHouse: [0x562420Cdf6291bAf3B48fd58FaC675e5c937f758](https://scope.klaytn.com/account/0x562420Cdf6291bAf3B48fd58FaC675e5c937f758)
  - KLAYswap LP Collaterals
    - KUSDT-KDAI AuctionHouse: [0x9FB68d9e61dC67886A9aCdf6acB5f28bFDcff68c](https://scope.klaytn.com/account/0x9FB68d9e61dC67886A9aCdf6acB5f28bFDcff68c)
    - KUSDT-KUSDC AuctionHouse: [0xbf9069CEaDd98eb9D063291017ff97AF41bE9BF0](https://scope.klaytn.com/account/0xbf9069CEaDd98eb9D063291017ff97AF41bE9BF0)
    - KLAY-KDAI AuctionHouse: [0x611696B54fC14B7fE2406336Ea594A9a9262E609](https://scope.klaytn.com/account/0x611696B54fC14B7fE2406336Ea594A9a9262E609)
    - KETH-KUSDT AuctionHouse: [0x5EB770ce35C45d77C2B75f6826C40379ED6968D2](https://scope.klaytn.com/account/0x5EB770ce35C45d77C2B75f6826C40379ED6968D2)
    - KXRP-KDAI AuctionHouse: [0x973E9f7E08867BeBeD93EF2f0bb4B58725182622](https://scope.klaytn.com/account/0x973E9f7E08867BeBeD93EF2f0bb4B58725182622)
    - KSP-KUSDT AuctionHouse: [0x7e440B7a56Fc83A07988C4c5d2320336B5d4AA9B](https://scope.klaytn.com/account/0x7e440B7a56Fc83A07988C4c5d2320336B5d4AA9B)
    - KORC-KDAI AuctionHouse: [0x9fd9E0201Cb3406D1f90af4b8e086581167E2Ce8](https://scope.klaytn.com/account/0x9fd9E0201Cb3406D1f90af4b8e086581167E2Ce8)
  - Leveraged Collaterals
    - Leveraged KLAY AuctionHouse: [0x77D619f660134C662310b1703c3a5789DfC93575](https://scope.klaytn.com/account/0x77D619f660134C662310b1703c3a5789DfC93575)
    - Leveraged WEMIX AuctionHouse: [0x348218E9770f4347453C6551E8FF96F3668Cdc33](https://scope.klaytn.com/account/0x348218E9770f4347453C6551E8FF96F3668Cdc33)
    - Leveraged KWBTC AuctionHouse: [0x383Cfb4E3FF4Bd72b85958F7adE6c158A17e6631](https://scope.klaytn.com/account/0x383Cfb4E3FF4Bd72b85958F7adE6c158A17e6631)
    - Leveraged KETH AuctionHouse: [0xe8Ae52181415145CA4d66dF97d4F162aE3d11da5](https://scope.klaytn.com/account/0xe8Ae52181415145CA4d66dF97d4F162aE3d11da5)
    - Leveraged KXRP AuctionHouse: [0xc17f511Ba830288098ac5235BCf5227708DbE46D](https://scope.klaytn.com/account/0xc17f511Ba830288098ac5235BCf5227708DbE46D)
    - Leveraged KSP AuctionHouse: [0x7060f4ad1221Bb696f444dc7A97DBd0BFef1aD16](https://scope.klaytn.com/account/0x7060f4ad1221Bb696f444dc7A97DBd0BFef1aD16)
    - Leveraged KORC AuctionHouse: [0xBD70281D4F3F362cFCceD5Fb6570F84E3Be1F5BC](https://scope.klaytn.com/account/0xBD70281D4F3F362cFCceD5Fb6570F84E3Be1F5BC)
    - Leveraged KDAI AuctionHouse: [0xb720CA913A747a21186bd4d3b84aCf60Dc0f9eB3](https://scope.klaytn.com/account/0xb720CA913A747a21186bd4d3b84aCf60Dc0f9eB3)
    - Leveraged KUSDT AuctionHouse: [0xAFc49693F21f941076f92DF09761cf920685E0F9](https://scope.klaytn.com/account/0xAFc49693F21f941076f92DF09761cf920685E0F9)
    - Leveraged KUSDC AuctionHouse: [0x5a0A18d319810852BEFDCCB31f8D1D3FD53487F1](https://scope.klaytn.com/account/0x5a0A18d319810852BEFDCCB31f8D1D3FD53487F1)

# 경매 참여 프로세스

1. 진행 중인 경매 목록을 불러오고, 각 경매 정보를 불러온다.

```js
const idList = await AuctionHouse.list();
for (let id of idList) {
  const [needsRedo, price, sellAmount, raiseAmount] = await AuctionHouse.getStatus(id);
  // ..
}
```

2. redo가 필요한 경매에 대해서는 redo를 불러준다.

```js
await AuctionHouse.redo(id, keeper);
```

3. 원하는 가격의 경매가 존재하면, 다음 3단계에 걸쳐 경매에 참여한다.

- KSD Gateway에 청산에 필요한 KSD를 넣는다. (미리 여유분을 넣어두어도 됨)

```js
await KSDGateway.join(user, ksdAmount);
```

- 담보물을 원하는만큼 매수한다.

```js
await AuctionHouse.take(id, amt, max, to, data);
```

- 매수한 담보물을 출금한다.
  - 출금 주소가 10,000 KOKOA 이상을 stake해두었다면, `unstakeInBKlay`와 `withdrawToken`을 사용하여 aklay를 즉시 출금할 수 있다.
  - 그렇지 않다면 `unstake`를 호출하고 7일 후에 `claimKlay`로 klay를 출금할 수 있다.

```js
/* KLAY */
const colAmount = await Ledger.token(collateralType, user);
// unstake aklay immediately
await KlayGateway.unstakeInBKlay(colAmount);
await BKlay.withdrawToken(user, colAmount);
// ..or unstake klay and wait for 7 days
await KlayGateway.unstake(user, colAmount);
await BKlay.claimKlay(user); // call this after 7 days

/* Not KLAY */
const colAmount = await Ledger.token(collateralType, user);
await CollateralGateway.unstake(colAmount);
```

# 경매 참여 코드 예시

```ts
const KSDGateway = getKSDGateway();
const AuctionHouse = getAuctionHouse("KETH");
const CollateralGateway = getGateway("KETH");

// Price is multiplied by 10^27
// For example, if ETH price is $3,000, marketPrice is 3000*10^27
const marketPrice: BigNumber = getMarketPrice("KETH");

const idList = await AuctionHouse.list();
for (let id of idList) {
  const [needsRedo, price, sellAmount, raiseAmount] = await AuctionHouse.getStatus(id);
  if (needsRedo) {
    await AuctionHouse.redo(id, user);
    continue;
  }
  // Take the auction if the price is 10% cheaper than the market price
  if (price < marketPrice.mul(9).div(10)) {
    // Deposit enough KSD
    await KSDGateway.join(user, raiseAmount);
    // Take the auction
    await AuctionHouse.take(id, sellAmount, price, user, []);
    // Withdraw collateral and KSD
    const colAmount = await Ledger.token(collateralType, user);
    await CollateralGateway.unstake(colAmount);
    const ksdAmount = await Ledger.ksd(user);
    await KSDGateway.exit(user, ksdAmount);
  }
}
```

# 담보물 명칭

`Ledger` 등에서 사용하는 `collateralType`의 목록

- Normal Collaterals
  - `klay`
  - `WEMIX`
  - `KWBTC` (oWBTC)
  - `KETH` (oETH)
  - `KXRP` (oXRP)
  - `KSP`
  - `KORC` (oORC)
  - `KDAI`
  - `KUSDT` (oUSDT)
  - `KUSDC` (oUSDC)
- KLEVA Collaterals
  - `ibKDAI`
  - `ibKUSDT` (iboUSDT)
- KLAYswap LP Collaterals
  - `KSLPKUSDTKDAI` (oUSDT-KDAI)
  - `KSLPKUSDTKUSDC` (oUSDT-oUSDC)
  - `KSLPKLAYKDAI` (KLAY-KDAI)
  - `KSLPKETHKUSDT` (oETH-oUSDT)
  - `KSLPKXRPKDAI` (oXRP-KDAI)
  - `KSLPKSPKUSDT` (KSP-oUSDT)
  - `KSLPKORCKDAI` (oORC-KDAI)
- Leveraged Collaterals
  - `XKLAY`
  - `XWEMIX`
  - `XKWBTC` (XoWBTC)
  - `XKETH` (XoETH)
  - `XKXRP` (XoXRP)
  - `XKSP`
  - `XKORC` (XoORC)
  - `XKDAI`
  - `XKUSDT` (XoUSDT)
  - `XKUSDC` (XoUSDC)
