#!/bin/bash

mkdir leap-wallet-generator
cd leap-wallet-generator

git clone https://github.com/YAbl0K0/LeepWallet30.git
cd LeepWallet30
npm install

node createWallet.js

if [ -f run.sh ]; then
  chmod +x run.sh
  ./run.sh
fi
