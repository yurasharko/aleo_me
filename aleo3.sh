#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo12lmzpcrqm3pumhmqmh6xghqwr67mht4ewtnzkwkg84pg0jveeszsjhcp66 --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
