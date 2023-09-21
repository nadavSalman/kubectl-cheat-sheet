 for node in $( k get pods -o wide  | grep 'aaa'   | awk '{ print $7 }' ) ; do k describe no $node | grep "node.kubernetes.io/instance-type"  ; done
                    node.kubernetes.io/instance-type=Standard_E48s_v3
                    node.kubernetes.io/instance-type=Standard_D64s_v3
                    node.kubernetes.io/instance-type=Standard_E48s_v3
                    node.kubernetes.io/instance-type=Standard_E48s_v3
                    node.kubernetes.io/instance-type=Standard_E48s_v3