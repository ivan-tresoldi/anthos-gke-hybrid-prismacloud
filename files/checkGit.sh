#!/bin/bash -l

curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X POST $TL_CONSOLE/api/v1/coderepos/scan
sleep 5
REPOOUTPUT=$(curl -k -u $TL_USER:$TL_PASS \
  -H 'Content-Type: application/json' \
  $TL_CONSOLE/api/v1/coderepos?id=itresoldi%2Fevil.petclinic&limit=15&offset=0&project=Central+Console&reverse=true&sort=vulnerabilityRiskScore)

#sed -n -e 's/^.*\(vulnerabilitiesCount\)/\1/p' | cut -f1 -d, | cut -f2- -d: > output.txt 
VULN=$(echo $REPOOUTPUT | sed -n -e 's/^.*\(vulnerabilitiesCount\)/\1/p' | cut -f1 -d, | cut -f2- -d:)

if [[ $VULN -eq 0 ]] 
then
   echo "No Code Repo Vulnerabilities!"
   exit 0
else
   echo "There are $VULN vulnerabilities on dependencies in Git"
   exit 1
fi
