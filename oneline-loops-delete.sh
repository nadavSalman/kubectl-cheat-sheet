for pod in $(k get pods -l product=Attenti -n prod | grep devicestreamerservice | awk '{ print $1 }') ; do k delete pod  $pod --force  -n prod  ; done  




project-c13


project-c13