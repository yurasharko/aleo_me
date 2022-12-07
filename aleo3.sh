#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo13r45mfhy24qhzp4wtmk4fr30nvj99sm0w3khf2vem00k439tay9q02twcw --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
