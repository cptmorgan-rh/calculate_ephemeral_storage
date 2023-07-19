#!/bin/bash

##################################################################
# This script returns Ephemeral Storage Used Bytes for each pod
# running on a node with a specific label.
#
# Change the label to correspond to the node(s) you wish to query
#
##################################################################

for x in $(kubectl get nodes --no-headers -l node-role.kubernetes.io/worker= | awk '{ print $1 }'); do

  kubectl get --raw /api/v1/nodes/"$x"/proxy/stats/summary > "$x".json
  echo ==============$x===============
  ephemstorage_arr=("NAMESPACE|POD|SIZE")
   for i in $(jq -r '.pods[].podRef.name' "$x".json); do
     #This grabs the namespace which will help identify pods with the same name in different namespaces
     for n in $(jq --raw-output --arg i "$i" '.pods[] | select(.podRef.name == $i) | .podRef.namespace' "$x".json); do
       used=$(jq --arg i "$i" --arg n "$n" '.pods[] | select(.podRef.name == $i and .podRef.namespace == $n) | ."ephemeral-storage".usedBytes' "$x".json | xargs numfmt --to iec)
       ephemstorage_arr+=($(printf "%s$n|$i|$used"))
     done
  done

  printf '%s\n' "${ephemstorage_arr[@]}" | column -t -s '|'
  printf "\n"

  unset ephemstorage_arr

  rm $x.json

done