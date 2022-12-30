#!/bin/bash
tmux new -s Utopia -d '/opt/uam/uam --pk $WALLET'
sleep 30
tailf miner.log