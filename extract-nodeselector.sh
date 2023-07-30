#!/bin/bash

cluster_prefix_list=("cus-8" "eus2-8" "neu-9" "weu-9")


for cluste_prefix in "${cluster_prefix_list[@]}"
do
    echo "---"
    context=$(kubectl config get-contexts | grep $cluste_prefix | awk 'NR==1{ print $2 }')
    kubectl config use-context $context
    kubectl get pods -n detection -o=jsonpath='{range .items[?(@.spec.nodeSelector.node\.kubernetes\.io/instance-type=="Standard_D32s_v3")]}{.metadata.name}{"\n"}{end}' | sed -E 's/-[a-z0-9][a-z0-9]*-[a-z0-9][a-z0-9]*$//' | uniq
done