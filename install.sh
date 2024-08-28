#!/bin/bash
git clone https://github.com/username/repository.git
cd repository
npm install
node generateLeapWallets.js

chmod +x run.sh
./run.sh
