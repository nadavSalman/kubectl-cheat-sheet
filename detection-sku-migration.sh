#!/bin/bash
cluster_prefix_list=("cus-8" "eus2-8" "neu-9" "weu-9")
helm_releases=(
   "aaa"
   "bbb"
)

echo "Context | Helm Release | Node Selector"

for cluste_prefix in "${cluster_prefix_list[@]}"
do
    context=$(kubectl config get-contexts | grep "$cluste_prefix" | awk 'NR==1{ print $2 }') 
    kubectl config use-context "$context"
    
    for helm_release in "${helm_releases[@]}"
    do
        helm_values=$(helm get values "$helm_release")
        node_selector=$(node_selector=$(helm get values $helm_release -n detection | yq eval '.nodeSelector."node.kubernetes.io/instance-type"' -)
        echo " $helm_release | $node_selector"
    done
done