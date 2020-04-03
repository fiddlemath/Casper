#!/bin/bash
set -euo pipefail

npm install
yarn dev &
sleep 5
touch assets/css/screen.css
yarn zip
mv dist/casper.zip dist/casper-anja.zip
open dist
