#!/bin/bash
tmux new -s Utopia -d '/opt/uam/uam --pk $WALLET'
sleep 15
tailf miner.log