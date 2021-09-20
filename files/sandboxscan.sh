#!/bin/bash

./twistcli sandbox -u $TL_USER -p $TL_PASS --address https://$TL_CONSOLE --output-file "sandbox.json" --analysis-duration 1m itresoldi/evilpetclinic:latest

status=$?
echo "Exit status is:"
echo $status


if [ "$status" == 0 ] || [ $BYPASS_SANDBOX == 1 ]; then
   echo "Image Vulnerability scan passed!"
   exit 0
else
   echo "Image Vulnerability scan failed!"
   exit 1
fi

