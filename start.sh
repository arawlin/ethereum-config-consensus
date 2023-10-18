#!/bin/bash

DIR_DATA="/wallet/ethereum/consensus"
DIR_DATA_EXECUTION="/wallet/ethereum/execution"

$DIR_DATA/stop.sh
echo -e "Starting \n"

#curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output $DIR_DATA/prysm.sh && chmod +x $DIR_DATA/prysm.sh

$DIR_DATA/prysm.sh beacon-chain --execution-endpoint=$DIR_DATA_EXECUTION/geth.ipc --config-file=$DIR_DATA/config.yaml >$DIR_DATA/stdout.txt 2>$DIR_DATA/stderr.txt &
echo $! >$DIR_DATA/node.pid

#$DIR_DATA/prysm.sh beacon-chain --execution-endpoint=$DIR_DATA_EXECUTION/geth.ipc --config-file=$DIR_DATA/config.yaml
# export PRYSM_ALLOW_UNVERIFIED_BINARIES=1
