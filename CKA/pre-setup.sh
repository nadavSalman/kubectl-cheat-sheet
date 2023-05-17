alias k=kubectl                         # will already be pre-configured

export do="--dry-run=client -o yaml"    # k create deploy nginx --image=nginx $do

export now="--force --grace-period 0"   # k delete pod x $now


kubectl config view | grep namespace:


alias kn='kubectl config set-context --current --namespace '
    