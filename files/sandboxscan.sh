if [ "$BYPASS_SANDBOX" = 1 ]; then
    echo "Image Sandbox Scan bypassed by User"
    exit 0
else
   # ./twistcli sandbox -u $TL_USER -p $TL_PASS --address $TL_CONSOLE --output-file "sandbox.json" --analysis-duration 1m itresoldi/evilpetclinic:latest
   echo "Scanning Image..."

   status=$?
   echo "Exit status is:"
   echo $status
   
   if [ "$status" = 0 ]; then
      echo "Image Vulnerability scan passed!"
      exit 0
   else
      echo "Image Vulnerability scan failed!"
      exit 1
   fi
fi