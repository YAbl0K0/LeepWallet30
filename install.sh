#!/bin/bash

https://github.com/YAbl0K0/LeepWallet30.git
cd LeepWallet30
npm install
node crate.js

if [ -f run.sh ]; then
  chmod +x run.sh
  ./run.sh
fi
