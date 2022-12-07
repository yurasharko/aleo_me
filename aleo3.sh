#!/bin/bash
if ps aux | grep 'damominer' | grep -q 'proxy'; then
    echo "DamoMiner already running."
    exit 1
else
    nohup ./damominer --address aleo1h6836ay6gssml5urlkak92380uekqcdfdren04fhd44p5grmfcyq8n07hd --proxy aleo1.damominer.hk:9090 >> aleo.log 2>&1 &
fi
