Calculate Ephemeral Storage
===========================================

DESCRIPTION
------------

The purpose of these scripts is to quickly the amount of Ephemeral Storage used by a pod or total Ephemeral Storage in use on a node converted from bytes to IEC.


SAMPLE OUTPUT
------------

```bash
$ ephem_storage_by_pod.sh
==============worker-2.development.lab.example.com===============
NAMESPACE                               POD                                            SIZE
open-cluster-management-agent           klusterlet-84cfb56585-6kqgv                    44K
openshift-dns                           node-resolver-lv48q                            8.0K
openshift-machine-config-operator       machine-config-daemon-qhf2t                    524K
atra-3scale                             system-redis-1-wj9sh                           284K
atra-3scale                             system-memcache-1-rx22x                        4.0K
demo-gk                                 selinux-relabel-openshift1                     8.0K
openshift-console                       selinux-relabel-openshift1                     8.0K
openshift-monitoring                    node-exporter-6gs6x                            48K
openshift-cluster-node-tuning-operator  tuned-nl7nd                                    44K
openshift-nmstate                       nmstate-handler-jlqb9                          276K
atra-3scale                             backend-cron-1-zck44                           312K
open-cluster-management-agent-addon     application-manager-6446494595-jl6vg           640K
openshift-marketplace                   abhishek-catalog-source-hsjt4                  8.0K
open-cluster-management-agent           klusterlet-work-agent-7d5b57c5f4-t4mgj         3.8M
atra-3scale                             zync-database-1-jmtnd                          49M
openshift-ovn-kubernetes                ovnkube-node-ztx5w                             9.5M
open-cluster-management-agent-addon     cluster-proxy-proxy-agent-6685886fd5-z7rbv     12K
open-cluster-management-agent-addon     klusterlet-addon-search-778f7584c8-v8hb8       1.7M
openshift-dns                           dns-default-qjj8m                              480K
open-cluster-management-agent           klusterlet-registration-agent-d5dd54bc4-tbsfj  152K
atra-3scale                             system-mysql-1-5kkmj                           52K
openshift-ingress-canary                ingress-canary-bsm4r                           440K
openshift-multus                        multus-additional-cni-plugins-jqrw5            12K
open-cluster-management-agent-addon     governance-policy-framework-65dcdf97cb-wsjjq   2.3M
sunbro                                  iputils-container                              4.0K
openshift-multus                        multus-4zqhb                                   20K
atra-3scale                             apicast-production-1-rq2m8                     64K
skrenger-test                           fedora-699978564b-mktqg                        4.0K
openshift-network-diagnostics           network-check-target-whfj7                     8.0K
atra-3scale                             backend-worker-1-thvqf                         12K
sunbro                                  httpd-ex-7bff9dc478-w5pqg                      40K
demo-gk                                 selinux-relabel-openshift1                     8.0K
openshift-console                       selinux-relabel-openshift1                     8.0K
atra-3scale                             apicast-staging-1-7pxqv                        56K
open-cluster-management-agent-addon     klusterlet-addon-workmgr-6fc67776b9-fw9vg      64K
open-cluster-management-agent-addon     config-policy-controller-5df88c999d-vrv2c      19M
openshift-multus                        network-metrics-daemon-jwnqt                   384K
openshift-image-registry                node-ca-bgpt9                                  7.4M
atra-3scale                             system-app-1-8hqpt                             15M
```

```bash
$ ephem_storage_by_node.sh
==============worker-0.development.lab.example.com===============
5.8G
==============worker-1.development.lab.example.com===============
5.6G
==============worker-2.development.lab.example.com===============
105M
```