Q:
Get the details of the node node01 in json format and store it in the file /opt/outputs/node01.json.


A1: kubectl get node node01 -o json > /opt/outputs/node01.json

A2:  k get nodes  -o=jsonpath='{ .items[?( @.metadata.name  == "node01")]  }' > /opt/outputs/node01.json


