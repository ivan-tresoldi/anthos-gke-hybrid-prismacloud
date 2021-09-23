if [ "$1" = 1 ]; then
    echo "Image Scan bypassed by User"
    exit 0
else
   ./twistcli images scan --u $TL_USER --p $TL_PASS --address $TL_CONSOLE --details itresoldi/evilpetclinic -o output.json
   result=$(curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' "$TL_CONSOLE/api/v1/scans?type=ciImage&collections=evilpetclinic&reverse=true&sort=time&limit=1"|jq '.[0].vulnFailureSummary'|grep "Scan failed")
   if [ -z "$result" ]; then
      echo "Image Vulnerability scan passed!"
      exit 0
   else
      echo "Image Vulnerability scan failed!"
      exit 1
   fi
fi

 
