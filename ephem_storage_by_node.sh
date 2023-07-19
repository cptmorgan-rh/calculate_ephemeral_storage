#!/bin/bash

##################################################################
# This script returns Ephemeral Storage Used Bytes for each node 
# with a specific label.
#
# Change the label to correspond to the node(s) you wish to query
##################################################################

for x in $(kubectl get nodes --no-headers -l node-role.kubernetes.io/worker= | awk '{ print $1 }'); do
  echo ==============$x===============
  kubectl get --raw /api/v1/nodes/"$x"/proxy/stats/summary | jq -r '.pods[]."ephemeral-storage".usedBytes' | paste -s -d + - | bc | numfmt --to iec
done
