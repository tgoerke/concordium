# Setup the development environment

## Install Rust
````
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   rustup target add wasm32-unknown-unknown
````
## Install cargo-concordium
````
   wget https://distribution.concordium.software/tools/linux/cargo-concordium_2.7.0
   mv cargo-concordium_2.7.0 bin/cargo-concordium
   chmod u+x bin/cargo-concordium
   bin/cargo-concordium
   cargo-concordium 
   rustup target add wasm32-unknown-unknown
   cargo concordium --help
````
## Install Concordium-client
````
   cd bin/
   wget https://distribution.concordium.software/tools/linux/concordium-client_5.0.2-0
   mv concordium-client_5.0.2-0 concordium-client
   chmod +x concordium-client
   concordiumhttps://github.com/tgoerke/concordium-client --help
   concordium-client consensus status --grpc-port 10000 --grpc-ip node.testnet.concordium.com
````

## Install the Web Wallet
https://chrome.google.com/webstore/detail/concordium-wallet/

## Create a Testnet account
- Acquiring testnet CCD via the CCD faucet

## Export the account from web wallet and import it into concordium client
````
   sudo apt  install jq  # version 1.6-1ubuntu0.20.04.1
   jq '' txt/4pfT44iebN3ygndjCmD1AR5sQWYtd52eJScC9QF2rqmkR2e9GA.export 
   concordium-client config account import 4pfT44iebN3ygndjCmD1AR5sQWYtd52eJScC9QF2rqmkR2e9GA.export --name concordium-dev
   find . ~/.config/concordium/accounts/4pfT44iebN3ygndjCmD1AR5sQWYtd52eJScC9QF2rqmkR2e9GA
````


