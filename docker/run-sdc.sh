#!/bin/bash 

mkdir /etc/rexray

cat > /etc/rexray/config.yml << EOF
rexray:
  logLevel: info
  storageDrivers:
    - scaleio
  modules:
    default-docker:
      type:     docker
      desc:     The default docker module
      host:     unix:///etc/docker/plugins/rexray.sock
      spec:     /etc/docker/plugins/rexray.spec
      disabled: false
scaleio:
  endpoint:             https://${MDM_IP}:443/api
  insecure:             true
  userName:             admin
  password:             password1?
  systemID:             ${SYSTEM_ID}
  protectionDomainName: domain1
  storagePoolName:      pool1
  thinOrThick:          ThinProvisioned
EOF

rexray start -l debug 
