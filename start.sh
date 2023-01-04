#!/bin/bash
tmux new -A -s Utopia -d 'cd /opt/uam && ./uam --pk $WALLET'
sleep 20
tail -f miner.log