Q:
Get the details of the node node01 in json format and store it in the file /opt/outputs/node01.json.


A1: kubectl get node node01 -o json > /opt/outputs/node01.json

A2:  k get nodes  -o=jsonpath='{ .items[?( @.metadata.name  == "node01")]  }' > /opt/outputs/node01.json




$ k get no -o=jsonpath="{ .items[*].status.addresses[0] }"
{"address":"172.18.0.5","type":"InternalIP"} {"address":"172.18.0.8","type":"InternalIP"} {"address":"172.18.0.4","type":"InternalIP"} {"address":"172.18.0.7","type":"InternalIP"} {"address":"172.18.0.2","type":"InternalIP"} {"address":"172.18.0.6","type":"InternalIP"} {"address":"172.18.0.3","type":"InternalIP"} 

 k get no -o=jsonpath="{ .items[*].status.addresses[0].address }" 
 172.18.0.5 172.18.0.8 172.18.0.4 172.18.0.7 172.18.0.2 172.18.0.6 172.18.0.3