#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo1grszp08nvs8749z69mgcy04hep25644405uepnjdytzl9dcywcyq46wd5w --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
