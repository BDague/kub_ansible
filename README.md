Ansible Scripts to help build a kubernetes cluster for ubuntu 16.

Used on ubuntu 16.04 LTS

Basic Instructions:

1. Get ansible up and running on master, mainly, make ssh keys and copy them to worker nodes.
Instructions on how to do that: http://rabexc.org/posts/using-ssh-agent

2. Configure ansible with your host addresses and passwords

3. run kub_install.yml via ansible

4. run kub_config.yml via ansible

5. run the kube_init.yml via bash

6. run kub_join.yml via ansible

7. kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
(This will install Flannel CNI for you)

8. kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.7.3/manifests/metallb.yaml

(Installs metallb, experimental load balancer for Kubernetes)

9. Adjust metal_config.yml to suit your needs, then
kubectl apply -f metal_config.yml
