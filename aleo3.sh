#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo1smfvjejcj4rh86xjxrh6a3grh2hzfwlse55jjz520uy7p5h0ry8qse8ecg --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
