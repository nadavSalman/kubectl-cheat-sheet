$ k get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints
NAME                              TAINTS
mz-smaster01.attentigroup.local   [map[effect:NoSchedule key:node-role.kubernetes.io/master]]
mz-smaster02.attentigroup.local   [map[effect:NoSchedule key:node-role.kubernetes.io/master]]
mz-smaster03.attentigroup.local   [map[effect:NoSchedule key:node-role.kubernetes.io/master]]
mz-sworker01.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker02.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker03.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker04.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker05.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker06.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-non-critical]]
mz-sworker07.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker08.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker09.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker10.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker11.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker12.attentigroup.local   [map[effect:NoSchedule key:dedicated value:coreservices-critical]]
mz-sworker13.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]
mz-sworker14.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]
mz-sworker15.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]
mz-sworker16.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]
mz-sworker17.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]
mz-sworker18.attentigroup.local   [map[effect:NoSchedule key:dedicated value:microservices]]




$ k get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints 


$ kubectl get pods -o=jsonpath="{range .items[*]}{.metadata.name}{'\t'}{.status.startTime}{'\n'}{end}" 




$ k get pods -l product=Attenti -o custom-columns=POD_NAME:.metadata.name,NODE:.spec.nodeName
POD_NAME                                     NODE
auditservice-665fbb6945-t6xp8                mz-sworker18.attentigroup.local
auditservice-665fbb6945-whxbn                mz-sworker16.attentigroup.local
auditservice-665fbb6945-xpw2w                mz-sworker14.attentigroup.local
authservice-55dc97f84c-7sbl6                 mz-sworker13.attentigroup.local
authservice-55dc97f84c-l5cgg                 mz-sworker14.attentigroup.local
authservice-55dc97f84c-mv26z                 mz-sworker17.attentigroup.local
biometricsidentityservice-7d97bf74c8-6cjtb   mz-sworker14.attentigroup.local
biometricsidentityservice-7d97bf74c8-hj66b   mz-sworker16.attentigroup.local
biometricsidentityservice-7d97bf74c8-jzqmb   mz-sworker15.attentigroup.local