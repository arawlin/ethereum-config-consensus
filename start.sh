#!/bin/bash

DIR_DATA="/wallet/ethereum/consensus"
DIR_DATA_EXECUTION="/wallet/ethereum/execution"

$DIR_DATA/stop.sh
echo -e "Starting \n"

#../lighthouse/target/maxperf/lighthouse bn --network mainnet --disable-deposit-contract-sync --datadir $DIR_DATA --checkpoint-sync-url https://sync-mainnet.beaconcha.in/ --http --execution-endpoint=http://localhost:8551 --execution-jwt ../jwt.hex --logfile $DIR_DATA/logs/lighthouse.log > /dev/null 2>&1 &
../lighthouse/target/maxperf/lighthouse bn --network mainnet --disable-deposit-contract-sync --datadir $DIR_DATA --allow-insecure-genesis-sync --http --execution-endpoint=http://localhost:8551 --execution-jwt ../jwt.hex --logfile $DIR_DATA/logs/lighthouse.log > /dev/null 2>&1 &
echo $! >$DIR_DATA/node.pid
