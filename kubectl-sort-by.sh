 kubectl get pv --sort-by=.spec.capacity.storage

 This is wron sort : k get pv --sort-by=='{.items[*].spec.capacity.storage}'  