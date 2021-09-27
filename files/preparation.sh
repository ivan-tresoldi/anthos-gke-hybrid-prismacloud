vulnerability_payload='{"rules":[{"modified":"2021-09-27T10:19:49.014Z","owner":"admin","name":"Evilpetclinic_Vuln_Rule","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"admin","modified":"2021-09-26T10:25:01.847Z","color":"#70c7fb","system":false,"prisma":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}},{"modified":"2021-09-26T10:10:28.03Z","owner":"admin","name":"Default - Alert all components","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-09-18T15:23:45.995Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}}],"policyType":"ciImagesVulnerability","_id":"ciImagesVulnerability"}'

compliance_payload='{"rules":[{"modified":"2021-09-27T10:20:38.131Z","owner":"admin","name":"Evilpetclinic_Compliance_Rule","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*evilpetclinic*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"admin","modified":"2021-09-26T10:25:01.847Z","color":"#70c7fb","system":false,"prisma":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[{"id":41,"block":false},{"id":422,"block":false},{"id":424,"block":false},{"id":425,"block":false},{"id":426,"block":false},{"id":448,"block":false},{"id":5041,"block":false}]},"group":["*"],"alertThreshold":{"disabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}},{"modified":"2021-09-18T15:23:45.449Z","owner":"system","name":"Default - alert on critical and high","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-09-18T15:23:45.995Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[{"id":425,"block":false},{"id":426,"block":false},{"id":448,"block":false},{"id":5041,"block":false},{"id":41,"block":false},{"id":422,"block":false},{"id":424,"block":false}]},"alertThreshold":{"disabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"graceDaysPolicy":{},"license":{"alertThreshold":{"enabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0}}}],"policyType":"ciImagesCompliance","_id":"ciImagesCompliance"}'

oss_payload='{"rules":[{"modified":"2021-05-24T08:07:51.787Z","owner":"admin","name":"fail on WTFPL","previousName":"","disabled":false,"effect":"alert, block","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-05-09T14:10:28.076Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"license":{"alertThreshold":{"enabled":true,"value":1},"blockThreshold":{"enabled":true,"value":9},"critical":["WTFPL"],"high":["GPL-1.0","GPL-2.0","GPL-3.0","LGPL-2.1","LGPL-3.0","AGPL-3.0","AGPL-3.0-or-later","GPL-2.0-with-classpath-exception","EUPL-1.0","EUPL-1.1","EUPL-1.2"],"medium":["Artistic-1.0-Perl","EPL-1.0","MS-PL","MPL-1.0","MPL-1.1","MPL-2.0","CDDL-1.0","CDDL-1.1","CPAL-1.0","CPL-1.0","IPL-1.0","NPL-1.0","NPL-1.1"],"low":["MIT","Apache-1.0","Apache-1.1","Apache-2.0","BSD-3-Clause","ISC","BSD-2-Clause","CPOL-1.02","WTFPL","Zlib","ANTLR-PD","ICU","Info-ZIP"]},"verbose":false,"allCompliance":false,"onlyFixed":false,"cveRules":[],"tags":[]},{"modified":"2021-05-20T08:26:04.999Z","owner":"itresoldi_paloaltonetworks_com","name":"Default - alert all components","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2021-05-09T14:10:28.076Z","color":"#3FA2F7","description":"System - all resources collection","system":true,"prisma":false}],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"license":{"alertThreshold":{"enabled":true,"value":1},"blockThreshold":{"enabled":false,"value":0},"critical":["MIT"],"high":["GPL-1.0","GPL-2.0","GPL-3.0","LGPL-2.1","LGPL-3.0","AGPL-3.0","AGPL-3.0-or-later","GPL-2.0-with-classpath-exception","EUPL-1.0","EUPL-1.1","EUPL-1.2"],"medium":["Artistic-1.0-Perl","EPL-1.0","MS-PL","MPL-1.0","MPL-1.1","MPL-2.0","CDDL-1.0","CDDL-1.1","CPAL-1.0","CPL-1.0","IPL-1.0","NPL-1.0","NPL-1.1"],"low":["MIT","Apache-1.0","Apache-1.1","Apache-2.0","BSD-3-Clause","ISC","BSD-2-Clause","CPOL-1.02","WTFPL","Zlib","ANTLR-PD","ICU","Info-ZIP"]}}],"policyType":"ciCodeRepoCompliance","_id":"ciCodeRepoCompliance","type":"compliance","policyContext":"ciCoderepos"}'

#add evilpetclinic collection
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X POST -d '{"name":"evilpetclinic","images":["*evilpetclinic*"]}' $TL_CONSOLE/api/v1/collections

#add app_code collection
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X POST -d '{"name":"evilpetclinic_app_code","codeRepos":["/workflow/app"]}' $TL_CONSOLE/api/v1/collections

#add customer malware signature
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d '{"feed":[{"name":"evil","md5":"b927cd908b58e703ab86f484b44a3791","allowed":false}]}' $TL_CONSOLE/api/v1/feeds/custom/malware

#Add Policy for Image Vuln. Scanning in CI/CD Pipeline
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$vulnerability_payload" $TL_CONSOLE/api/v1/policies/vulnerability/ci/images 
if [ $status = 0 ]
then
  echo "Successfully installed image vulnerability policies"
else
  echo "Vulnerability policy install failed, $status"
fi

#Add Policy for Image Compliance Scanning in CI/CD Pipeline
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json' -X PUT -d "$compliance_payload" $TL_CONSOLE/api/v1/policies/compliance/ci/images
if [ $status = 0 ]
then
  echo "Successfully installed image vulnerability policies"
else
  echo "Vulnerability policy install failed, $status"
fi

#add Policy for OSS license Scan
curl -k -u $TL_USER:$TL_PASS -H 'Content-Type: application/json;charset=UTF-8' -X PUT -d "$oss_payload" $TL_CONSOLE/api/v1/policies/compliance/ci/coderepos
if [ $status = 0 ]
then
  echo "Successfully installed OSS policies"
else
  echo "Vulnerability policy install failed, $status"
fi
