#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo1c8yw3uj0f4zucusntr5f7le4mlts0w6hdwjqtqlkfqz7wtdm3cfq8sa370 --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
