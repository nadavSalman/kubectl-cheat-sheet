#!/bin/bash




# rm -rf microservices-helm-charts/*
helm_repository='Perf3HelmRepository'

helm repo add $helm_repository http://$repository_server_ip:8081/repository/HelmRepository/  \
  --username admin \
  --password Q1w2e3r4t5y6




input="microservice_name:version"

mkdir -p microservices-helm-charts
cd microservices-helm-charts

IFS=$'\n'       # set the field separator to newline
for line in $input; do
  chart_name=$(echo $line | cut -d ':' -f 1)   # extract the chart name
  chart_version=$(echo $line | cut -d ':' -f 2)   # extract the chart version 
#   printf "\n name: %s , Chart version: %s \n" $chart_name $chart_version
#   helm pull $helm_repository/$chart_name --version $chart_version
#   tgz_full_name=$chart_name"-"$chart_version".tgz"
  
#   tar -xf $tgz_full_name 
  
#   cd $chart_name
  printf "Update release %s \n" $chart_name
  helm upgrade $chart_name $chart_name -n prod
#   attenti_common_version=`helm dependency list | awk '{ print $2 }' | tail -2 |  sed '/^\s*$/d' | sed 's/^\s*//' | sed 's/\s*$//'`
#   printf "Attenti Common Version : %s ,Chart Name : %s   \n " $attenti_common_version $chart_name 
#   cd ..
done