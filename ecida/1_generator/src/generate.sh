#!/bin/bash
# Eternal loop to generate data
i=0
while [ $i -lt 1 ]
do
dat="{\"data\": $RANDOM}"
echo $dat
curl -X POST \
     -H "Content-Type: application/json" \
     -d "$dat" "$SINK" 2>&1
sleep 1
done

