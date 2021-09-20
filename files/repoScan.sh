#!/bin/bash -l

# Set default Environment Variables
source $WORK_DIR/build_vars

$TWISTCLI_PATH/twistcli coderepo scan --address https://$TL_CONSOLE --details -u $TL_USER -p $TL_PASS $WORK_DIR/$REPO_DIR/app 
result=$(curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' "https://$TL_CONSOLE/api/v1/coderepos-ci?limit=1&reverse=true&sort=scanTime"|jq '.[0].pass')

if [ "$result" == "true" ] || [ $BYPASS_REPOSCAN == 1 ]; then
   echo "Code Repo scan passed!"
   exit 0
else
   echo "Code Repo scan failed!"
   exit 1
fi
