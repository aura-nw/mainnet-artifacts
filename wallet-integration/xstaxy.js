var foo = async function() {
    console.log('Welcome to Aura Network');
    console.log('start request adding xstaxy mainnet');
  
    await window['keplr'].experimentalSuggestChain({
      chainId: "xstaxy-1",
      chainName: "Aura Xstaxy Mainnet",
      rpc: "https://rpc.aura.network",
      rest: "https://lcd.aura.network",
      bip44: {
        coinType: 118,
      },
      bech32Config: {
        bech32PrefixAccAddr: "aura",
        bech32PrefixAccPub: "aura" + "pub",
        bech32PrefixValAddr: "aura" + "valoper",
        bech32PrefixValPub: "aura" + "valoperpub",
        bech32PrefixConsAddr: "aura" + "valcons",
        bech32PrefixConsPub: "aura" + "valconspub",
      },
      currencies: [{
        coinDenom: "AURA",
        coinMinimalDenom: "uaura",
        coinDecimals: 6,
        coinGeckoId: "aura",
      }, ],
      feeCurrencies: [{
        coinDenom: "AURA",
        coinMinimalDenom: "uaura",
        coinDecimals: 6,
        coinGeckoId: "uaura",
      }, ],
      stakeCurrency: {
        coinDenom: "AURA",
        coinMinimalDenom: "uaura",
        coinDecimals: 6,
        coinGeckoId: "uaura",
      },
      coinType: 118,
      gasPriceStep: {
        low: 0.001,
        average: 0.0025,
        high: 0.004
      },
      features: ['no-legacy-stdTx'],
      walletUrlForStaking: "https://aurascan.io/validators",
      logo: "https://i.imgur.com/zi0mTYb.png",
      explorer: "https://aurascan.io/"
    });
    console.log('finish request adding xstaxy mainnet');
  };
  
  setTimeout(() => {
    foo()
    console.log(window.keplr)
  }, 1001);
  
  console.log('Welcome to Aura Network');