#!/bin/bash
# Eternal loop to generate data
i=0
while [ $i -lt 1 ]
do
curl -X POST \
     -H "Content-Type: application/json" \
     -d "\"{data: $RANDOM}\"" $SINK 2>&1
sleep 1
done

