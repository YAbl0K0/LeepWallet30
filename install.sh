#!/bin/bash

sudo apt update
sudo apt install nodejs npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install 16
nvm use 16

rm -rf node_modules
npm install

npm install bip39

mkdir leap-wallet-generator
cd leap-wallet-generator

git clone https://github.com/VadimRM7/PUBLIC/main/wallet/leep_wallet25.git
cd leep_wallet25
npm install

node create_wallet.js

sleep 60

cd ../..
rm -rf leap-wallet-generator

clear
