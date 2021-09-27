runtime_payload='{ "_id": "containerRuntime", "rules": [ { "modified": "2021-03-19T15:08:13.110Z", "owner": "admin", "name": "Evilpetclinic_Runtime", "previousName": "", "collections": [ { "hosts": [ "*" ], "images": [ "*evilpetclinic*" ], "labels": [ "*" ], "containers": [ "*" ], "functions": [ "*" ], "namespaces": [ "*" ], "appIDs": [ "*" ], "accountIDs": [ "*" ], "codeRepos": [ "*" ], "clusters": [ "*" ], "name": "evilpetclinic", "owner": "admin", "modified": "2021-01-20T09:55:41.982Z", "color": "#68DCFC", "system": false } ], "advancedProtection": true, "wildFireAnalysis": "alert", "processes": { "effect": "prevent", "blacklist": [], "whitelist": [ "bash" ], "checkCryptoMiners": true, "checkLateralMovement": true }, "network": { "effect": "alert", "blacklistIPs": [], "blacklistListeningPorts": [], "whitelistListeningPorts": [], "blacklistOutboundPorts": [], "whitelistOutboundPorts": [], "whitelistIPs": [], "skipModifiedProc": false, "detectPortScan": true, "skipRawSockets": false }, "dns": { "effect": "prevent", "whitelist": [ "cdn.twistlock.com", "storage.googleapis.com" ], "blacklist": [ "github.com" ] }, "filesystem": { "effect": "prevent", "blacklist": [ "/secret" ], "whitelist": [], "checkNewFiles": true, "backdoorFiles": true }, "kubernetesEnforcement": true, "cloudMetadataEnforcement": true, "customRules": [ { "name": "Twistlock Labs - Suspicious networking tool", "_id": 16, "type": "processes", "script": "proc.name in (\"nc.openbsd\", \"nc\", \"ncat\", \"nmap\", \"socat\")", "description": "Detect launching of suspicious networking tool", "message": "Suspicious networking tool %proc.name was launched by %proc.user", "owner": "system", "modified": 1611075844, "effect": "block", "action": "audit" } ] },{ "modified": "2020-12-31T16:25:35.921Z", "owner": "admin", "name": "Default - alert on suspicious runtime behavior", "previousName": "", "collections": [ { "hosts": [ "*" ], "images": [ "*" ], "labels": [ "*" ], "containers": [ "*" ], "functions": [ "*" ], "namespaces": [ "*" ], "appIDs": [ "*" ], "accountIDs": [ "*" ], "codeRepos": [ "*" ], "clusters": [ "*" ], "name": "All", "owner": "system", "modified": "2021-01-19T17:04:04.288Z", "color": "#3FA2F7", "description": "System - all resources collection", "system": true } ], "advancedProtection": true, "wildFireAnalysis": "alert", "processes": { "effect": "alert", "blacklist": [], "whitelist": [], "checkCryptoMiners": true, "checkLateralMovement": true, "checkParentChild": true }, "network": { "effect": "alert", "blacklistIPs": [], "blacklistListeningPorts": [], "whitelistListeningPorts": [], "blacklistOutboundPorts": [], "whitelistOutboundPorts": [], "whitelistIPs": [], "skipModifiedProc": false, "detectPortScan": true, "skipRawSockets": false }, "dns": { "effect": "alert", "whitelist": [], "blacklist": [] }, "filesystem": { "effect": "alert", "blacklist": [], "whitelist": [], "checkNewFiles": true, "backdoorFiles": true }, "kubernetesEnforcement": true, "cloudMetadataEnforcement": true, "customRules": [ { "_id": 26, "action": "audit", "effect": "alert" }, { "_id": 23, "action": "audit", "effect": "alert" }, { "_id": 19, "action": "audit", "effect": "alert" } ] } ], "learningDisabled": false }'

waas_payload='{"_id":"containerAppFirewall","rules":[{"modified":"2021-09-27T10:38:10.214Z","owner":"admin","name":"Evilpeclinic_WAAS","previousName":"","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"admin","modified":"2021-09-26T10:25:01.847Z","color":"#70c7fb","system":false,"prisma":false}],"applicationsSpec":[{"appID":"app-D556","customBlockResponse":{},"banDurationMinutes":5,"certificate":{"encrypted":""},"tlsConfig":{"minTLSVersion":"1.2","metadata":{"notAfter":"0001-01-01T00:00:00Z","issuerName":"","subjectName":""},"HSTSConfig":{"enabled":false,"maxAgeSeconds":31536000,"includeSubdomains":false,"preload":false}},"dosConfig":{"enabled":false,"alert":{},"ban":{}},"apiSpec":{"endpoints":[{"host":"*","basePath":"*","exposedPort":0,"internalPort":8080,"tls":false,"http2":false}],"effect":"disable","fallbackEffect":"disable","skipLearning":false},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"disable","businessAnalytics":"disable","educational":"disable","news":"disable","financial":"disable","contentFeedClients":"disable","archiving":"disable","careerSearch":"disable","mediaSearch":"disable"},"unknownBotProtectionSpec":{"generic":"disable","webAutomationTools":"disable","webScrapers":"disable","apiLibraries":"disable","httpLibraries":"disable","botImpersonation":"disable","browserImpersonation":"disable","requestAnomalies":{"threshold":9,"effect":"disable"}},"sessionValidation":"disable","interstitialPage":false,"jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"},"reCAPTCHASpec":{"enabled":false,"siteKey":"","secretKey":{"encrypted":""},"type":"checkbox","allSessions":true,"successExpirationHours":24}},"networkControls":{"advancedProtectionEffect":"prevent","subnets":{"enabled":false,"allowMode":true,"fallbackEffect":"alert"},"countries":{"enabled":false,"allowMode":true,"fallbackEffect":"alert"}},"body":{"inspectionSizeBytes":131072},"intelGathering":{"infoLeakageEffect":"prevent","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"csrfEnabled":true,"clickjackingEnabled":true,"sqli":{"effect":"prevent","exceptionFields":[]},"xss":{"effect":"prevent","exceptionFields":[]},"attackTools":{"effect":"prevent","exceptionFields":[]},"shellshock":{"effect":"prevent","exceptionFields":[]},"malformedReq":{"effect":"prevent","exceptionFields":[]},"cmdi":{"effect":"prevent","exceptionFields":[]},"lfi":{"effect":"prevent","exceptionFields":[]},"codeInjection":{"effect":"prevent","exceptionFields":[]},"remoteHostForwarding":{}}],"readTimeoutSeconds":5,"windows":false}],"minPort":30000,"maxPort":31000}'

vulnerability_payload='{"rules":[{"modified":"2021-09-27T10:19:49.014Z","owner":"admin","name":"Evilpetclinic_Vuln_Rule","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"admin","modified":"2021-09-26T10:25:01.847Z","color":"#70c7fb","system":false,"prisma":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}},{"modified":"2021-09-26T10:10:28.03Z","owner":"admin","name":"Default - Alert all components","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-09-18T15:23:45.995Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}}],"policyType":"ciImagesVulnerability","_id":"ciImagesVulnerability"}'

compliance_payload='{"rules":[{"modified":"2021-09-27T10:20:38.131Z","owner":"admin","name":"Evilpetclinic_Compliance_Rule","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"admin","modified":"2021-09-26T10:25:01.847Z","color":"#70c7fb","system":false,"prisma":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[{"id":41,"block":false},{"id":422,"block":false},{"id":424,"block":false},{"id":425,"block":false},{"id":426,"block":false},{"id":448,"block":false},{"id":5041,"block":false}]},"group":["*"],"alertThreshold":{"disabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}},{"modified":"2021-09-18T15:23:45.449Z","owner":"system","name":"Default - alert on critical and high","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-09-18T15:23:45.995Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[{"id":425,"block":false},{"id":426,"block":false},{"id":448,"block":false},{"id":5041,"block":false},{"id":41,"block":false},{"id":422,"block":false},{"id":424,"block":false}]},"alertThreshold":{"disabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}}],"policyType":"ciImagesCompliance","_id":"ciImagesCompliance"}'

#add evilpetclinic collection
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X POST -d '{"name":"evilpetclinic","images":["*evilpetclinic*"]}' $TL_CONSOLE/api/v1/collections

#add customer malware signature
curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d '{"feed":[{"name":"evil","md5":"b927cd908b58e703ab86f484b44a3791","allowed":false}]}' $TL_CONSOLE/api/v1/feeds/custom/malware

#add runtime rules  
curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$runtime_payload" $TL_CONSOLE/api/v1/policies/runtime/container

if [ $status -eq 0 ]
then
  echo "Successfully installed Runtime policies, among which Demo_Rule"
else
  echo "Runtime policy install failed, $status"
fi

#Add Policy for Image Vuln. Scanning in CI/CD Pipeline
curl $TL_CONSOLE/api/v1/policies/vulnerability/ci/images -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$vulnerability_payload"

if [ $status -eq 0 ]
then
  echo "Successfully installed image vulnerability policies, among which Demo_Vuln_Rule"
else
  echo "Vulnerability policy install failed, $status"
fi

#Add Policy for Image Compliance Scanning in CI/CD Pipeline
curl $TL_CONSOLE/api/v1/policies/compliance/ci/images -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$compliance_payload"

if [ $status -eq 0 ]
then
  echo "Successfully installed image vulnerability policies, among which Demo_Vuln_Rule"
else
  echo "Vulnerability policy install failed, $status"
fi

#add waas rules
curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$waas_payload" $TL_CONSOLE/api/v1/policies/firewall/app/container

if [ $status -eq 0 ]
then
  echo "Successfully installed container WAAS policies, among which Demo_WAAS_Rule"
else
  echo "Container WAAS policy install failed, $status"
fi
