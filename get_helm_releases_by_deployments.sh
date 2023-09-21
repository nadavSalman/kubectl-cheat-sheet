#!/bin/bash

namespaces=(
   "aaa"
   "bbb"
)


for namespace in "${namespaces[@]}"
do
   printf "Namespec : %s \n"  $namespace
   for deployment in $(kubectl get deployment -n $namespace -o=name); do  kubectl -n $namespace get $deployment  -o yaml | yq eval '.metadata.annotations."meta.helm.sh/release-name"' -  ; done
done
