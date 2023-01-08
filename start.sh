#!/usr/local/bin/dumb-init /bin/bash
rm -rf miner.log
tmux new -A -s Utopia -d 'cd /opt/uam && ./uam --pk $WALLET'
sleep 20
tail --follow=name --retry miner.log