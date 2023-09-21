#!/bin/bash
cluster_prefix_list=("cus-8" "eus2-8" "neu-9" "weu-9")
helm_releases=(
    "alert-merge-service"
    "alertexperience-prefetcher"
    "alertpersistor"
    "alertstatuspersistor"
    "cyberdatapersistor"
    "detectionmanager"
    "profileprocessor-detectionbased"
    "securityobservationrouter"
    "alerttracking-k8s"
    "detection-profileenricher"
    "globalprofilesynchronizer"
    "globalprofilesynchronizer-estimator"
    "hourlycyberdatacurator"
    "profilechangesdispatcher"
    "singeltonstoblobwriter"
    "timelineexperience-prefetcher"
    "profilesnapshotwriter"
)

printf "%-40s | %-35s | %-20s\n" "Cluster" "Helm Release" "Node Selector"
for cluster_prefix in "${cluster_prefix_list[@]}"
do
    context=$(kubectl config get-contexts | grep "$cluster_prefix" | awk 'NR==1{ print $2 }') 
    kubectl config use-context "$context" >> /dev/null
    
    for helm_release in "${helm_releases[@]}"
    do
        node_selector=$(helm get values "$helm_release" -n detection 2>/dev/null | yq eval '.nodeSelector."node.kubernetes.io/instance-type"' - ) #redirect the standard error stream
        if [ "$node_selector" == "null" ]; then
            node_selector=$(helm get values "$helm_release" -n detection 2>/dev/null | yq eval '.nodeSelector."beta.kubernetes.io/instance-type"' - )
        fi
        if [ "$node_selector" == "null" ]; then
            node_selector="lllrelease: not found"
        fi
        printf "%-40s | %-35s | %-20s\n" "$context" "$helm_release" "$node_selector"
    done
done