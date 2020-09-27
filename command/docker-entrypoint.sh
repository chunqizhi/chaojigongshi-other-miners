#!/bin/sh
geth --datadir /data init /genesis/genesis.json

geth --datadir /data --networkid 919 --ws --wsaddr 0.0.0.0 --rpc --rpcaddr 0.0.0.0 --rpcapi eth,web3,net

