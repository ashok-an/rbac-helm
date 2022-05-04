---
name: Namespace-request
about: Form to be filled by tenant teams when they request for a namespace
title: "[namespace]"
labels: namespace-request
assignees: ''

---

```yaml
inputs:
  teamName: ${TEAM_NAME}
  emailPrefix: ${TEAM_NAME} #@cisco.com
  webexRoomName: ${TEAM_NAME}-alerts
  webexRoomId: abcd1234
  oidcGroup: ${TEAM_NAME}-oidc

namespace:
  name: ${TEAM_NAME}-ns

serviceAccount:
  name: ${TEAM_NAME}-sa

ingress:
  ip: 127.0.0.1

limits:
  maxCpu: "5"
  maxMemory: 20Gi
  minCpu: ".1"
  minMemory: 128Mi
  maxGpu: 0
  maxStorage: 50Gi
  maxEphemeralStorage: 30Gi
  counts:
    pods: 30
    services: 10
    loadbalancers: 0
    nodeports: 1
    secrets: 10
    configmaps: 10
    persistentvolumeclaims: 10
    deployments.apps: 10
    statefulsets.apps: 5
    jobs.batch: 10
    cronjobs.batch: 10
```
