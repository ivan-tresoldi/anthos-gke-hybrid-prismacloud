version=$(curl -s -q -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X GET $TL_CONSOLE/api/v1/version | sed -e 's/"//' |cut -d. -f1)

echo "Version is:"
echo $version

if [ "$version" -lt 21 ]
then
 #version<21"
 runtime_payload='{"_id":"containerRuntime","rules":[{"modified":"2021-03-19T15:08:13.110Z","owner":"itresoldi_paloaltonetworks_com","name":"Demo_Rule_Runtime","previousName":"Demo_Rule_Runtime","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"itresoldi_paloaltonetworks_com","modified":"2021-01-20T09:55:41.982Z","color":"#68DCFC","system":false}],"advancedProtection":true,"processes":{"effect":"prevent","blacklist":[],"whitelist":["bash"],"checkCryptoMiners":true,"checkLateralMovement":true},"network":{"effect":"alert","blacklistIPs":[],"blacklistListeningPorts":[],"whitelistListeningPorts":[],"blacklistOutboundPorts":[],"whitelistOutboundPorts":[],"whitelistIPs":[],"skipModifiedProc":false,"detectPortScan":true,"skipRawSockets":false},"dns":{"effect":"prevent","whitelist":["cdn.twistlock.com","storage.googleapis.com"],"blacklist":["github.com"]},"filesystem":{"effect":"prevent","blacklist":["/secret"],"whitelist":[],"checkNewFiles":true,"backdoorFiles":true},"kubernetesEnforcement":true,"cloudMetadataEnforcement":true,"customRules":[{"name":"Twistlock Labs - Suspicious networking tool","_id":16,"type":"processes","script":"proc.name in (\"nc.openbsd\", \"nc\", \"ncat\", \"nmap\", \"socat\")","description":"Detect launching of suspicious networking tool","message":"Suspicious networking tool %proc.name was launched by %proc.user","owner":"system","modified":1611075844,"effect":"prevent","action":"audit"}]}'
 waas_payload='{"_id":"containerAppFirewall","rules":[{"applicationsSpec":[{"banDurationMinutes":5,"apiSpec":{"endpoints":[{"host":"*","internalPort":80,"basePath":"*"}],"effect":"disable","fallbackEffect":"disable","paths":[]},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"disable","businessAnalytics":"disable","educational":"disable","news":"disable","financial":"disable","contentFeedClients":"disable","archiving":"disable","careerSearch":"disable","mediaSearch":"disable"},"unknownBotProtectionSpec":{"generic":"disable","webAutomationTools":"disable","webScrapers":"disable","apiLibraries":"disable","httpLibraries":"disable","botImpersonation":"disable","browserImpersonation":"disable","requestAnomalies":{"effect":"disable","threshold":9}},"sessionValidation":"disable","jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"}},"dosConfig":{"effect":"disable","matchCriteria":[],"matchConditions":[]},"networkControls":{"advancedProtectionEffect":"prevent","deniedSubnets":[],"deniedSubnetsEffect":"alert","allowedSubnets":[],"deniedCountries":[],"deniedCountriesEffect":"alert","allowedCountries":[],"allowedCountriesEffect":"alert"},"xss":{"effect":"prevent","exceptionFields":[]},"sqli":{"effect":"prevent","exceptionFields":[]},"cmdi":{"effect":"prevent","exceptionFields":[]},"lfi":{"effect":"prevent","exceptionFields":[]},"codeInjection":{"effect":"prevent","exceptionFields":[]},"attackTools":{"effect":"prevent","exceptionFields":[]},"shellshock":{"effect":"prevent"},"malformedReq":{"effect":"prevent"},"headerSpecs":[],"csrfEnabled":true,"clickjackingEnabled":true,"intelGathering":{"infoLeakageEffect":"prevent","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"body":{"skip":false,"inspectionSizeBytes":131072},"certificate":{}}],"collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"itresoldi_paloaltonetworks_com","modified":"2021-01-20T09:55:41.982Z","color":"#68DCFC","system":false,"selected":true}],"name":"Evil_WAAS_Rule","owner":"itresoldi_paloaltonetworks_com","modified":"2021-01-20T10:11:29.411Z"}'
else
 #version>=21
 runtime_payload='{ "_id": "containerRuntime", "rules": [{ "modified": "2021-03-19T15:08:13.110Z", "owner": "itresoldi_paloaltonetworks_com", "name": "Demo_Rule_Runtime", "previousName": "Demo_Rule_Runtime", "collections": [ { "hosts": [ "*" ], "images": [ "*evilpetclinic*" ], "labels": [ "*" ], "containers": [ "*" ], "functions": [ "*" ], "namespaces": [ "*" ], "appIDs": [ "*" ], "accountIDs": [ "*" ], "codeRepos": [ "*" ], "clusters": [ "*" ], "name": "evilpetclinic", "owner": "itresoldi_paloaltonetworks_com", "modified": "2021-01-20T09:55:41.982Z", "color": "#68DCFC", "system": false } ], "advancedProtection": true, "wildFireAnalysis": "alert", "processes": { "effect": "prevent", "blacklist": [], "whitelist": [ "bash" ], "checkCryptoMiners": true, "checkLateralMovement": true }, "network": { "effect": "alert", "blacklistIPs": [], "blacklistListeningPorts": [], "whitelistListeningPorts": [], "blacklistOutboundPorts": [], "whitelistOutboundPorts": [], "whitelistIPs": [], "skipModifiedProc": false, "detectPortScan": true, "skipRawSockets": false }, "dns": { "effect": "prevent", "whitelist": [ "cdn.twistlock.com", "storage.googleapis.com" , "*paloaltonetworks.com"], "blacklist": [ "github.com" ] }, "filesystem": { "effect": "prevent", "blacklist": [ "/secret" ], "whitelist": [], "checkNewFiles": true, "backdoorFiles": true }, "kubernetesEnforcement": true, "cloudMetadataEnforcement": true, "customRules": [ { "name": "Twistlock Labs - Suspicious networking tool", "_id": 16, "type": "processes", "script": "proc.name in (\"nc.openbsd\", \"nc\", \"ncat\", \"nmap\", \"socat\")", "description": "Detect launching of suspicious networking tool", "message": "Suspicious networking tool %proc.name was launched by %proc.user", "owner": "system", "modified": 1611075844, "effect": "block", "action": "audit" }]}'
 waas_payload='{"_id":"containerAppFirewall","rules":[{"modified":"2021-05-21T15:54:50.405Z","owner":"itresoldi_paloaltonetworks_com","name":"Evil_WAAS_Rule","previousName":"","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"itresoldi_paloaltonetworks_com","modified":"2021-05-10T08:07:36.402Z","color":"#68DCFC","system":false,"prisma":false}],"applicationsSpec":[{"appID":"1337","customBlockResponse":{},"banDurationMinutes":2,"certificate":{},"dosConfig":{"enabled":true,"alert":{"burst":3,"average":2},"ban":{"burst":5,"average":4},"matchConditions":[],"trackSession":false},"apiSpec":{"endpoints":[{"host":"*","basePath":"*","exposedPort":0,"internalPort":8080,"tls":false,"http2":false}],"effect":"disable","fallbackEffect":"disable","skipLearning":false,"paths":[]},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"disable","businessAnalytics":"disable","educational":"disable","news":"disable","financial":"disable","contentFeedClients":"disable","archiving":"disable","careerSearch":"disable","mediaSearch":"disable"},"unknownBotProtectionSpec":{"generic":"disable","webAutomationTools":"disable","webScrapers":"disable","apiLibraries":"disable","httpLibraries":"disable","botImpersonation":"disable","browserImpersonation":"disable","requestAnomalies":{"threshold":9,"effect":"disable"}},"sessionValidation":"disable","interstitialPage":false,"jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"},"reCAPTCHASpec":{"enabled":false,"secretKey":{},"type":"checkbox","allSessions":true,"successExpirationHours":24}},"networkControls":{"advancedProtectionEffect":"prevent","subnets":{"enabled":false,"allowMode":true,"fallbackEffect":"alert","blockingMode":"allowed","alert":null,"prevent":null},"countries":{"enabled":false,"allowMode":true,"fallbackEffect":"alert","blockingMode":"allowed","alert":null,"prevent":null}},"body":{"inspectionSizeBytes":131072},"intelGathering":{"infoLeakageEffect":"prevent","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"csrfEnabled":true,"clickjackingEnabled":true,"sqli":{"effect":"prevent","exceptionFields":[]},"xss":{"effect":"prevent","exceptionFields":[]},"attackTools":{"effect":"prevent","exceptionFields":[]},"shellshock":{"effect":"prevent","exceptionFields":[]},"malformedReq":{"effect":"prevent","exceptionFields":[]},"cmdi":{"effect":"prevent","exceptionFields":[]},"lfi":{"effect":"prevent","exceptionFields":[]},"codeInjection":{"effect":"prevent","exceptionFields":[]},"remoteHostForwarding":{},"customRules":[],"sessionCookieEnabled":false,"sessionCookieBan":false,"headerSpecs":[]}],"expandDetails":true}'
fi

curl -k -s -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X POST -d '{"name":"evilpetclinic","containers":["*"],"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"appIDs":["*"],"functions":["*"],"namespaces":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"color":"#68DCFC"}' $TL_CONSOLE/api/v1/collections

#add customer malware signature
curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d '{"feed":[{"name":"evil","md5":"b927cd908b58e703ab86f484b44a3791","allowed":false}]}' $TL_CONSOLE/api/v1/feeds/custom/malware
  
curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$runtime_payload" $TL_CONSOLE/api/v1/policies/runtime/container

status=$?
echo "Status Regole Runtime"
echo $status

if [ $status -eq 0 ]
then
  echo "Successfully installed Runtime policies, among which Demo_Rule"
else
  echo "Runtime policy install failed, $status"
fi


curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d '{"rules":[{"modified":"2021-01-20T10:10:13.396Z","owner":"itresoldi_paloaltonetworks_com","name":"Demo_Vuln_Rule","previousName":"Demo_Vuln_Rule","effect":"alert","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"itresoldi_paloaltonetworks_com","modified":"2021-01-20T09:55:41.982Z","color":"#68DCFC","system":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"verbose":false,"allCompliance":false,"onlyFixed":false,"cveRules":[],"tags":[]}' $TL_CONSOLE/api/v1/policies/vulnerability/images

status=$?
echo "Status Regole Vulnerability"
echo $status

if [ $status -eq 0 ]
then
  echo "Successfully installed image vulnerability policies, among which Demo_Vuln_Rule"
else
  echo "Vulnerability policy install failed, $status"
fi


curl -s -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$waas_payload" $TL_CONSOLE/api/v1/policies/firewall/app/container

status=$?
echo "Status Regole WAAS"
echo $status

if [ $status -eq 0 ]
then
  echo "Successfully installed container WAAS policies, among which Demo_WAAS_Rule"
else
  echo "Container WAAS policy install failed, $status"
fi
