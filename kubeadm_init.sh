kubeadm init --pod-network-cidr=10.244.0.0/16
cp /etc/kubernetes/admin.conf ~/.kube/config
chown brian ~/.kube/config
