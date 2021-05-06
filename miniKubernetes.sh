curl -LO https://storage.googleapi.com/kubernetes-release/release/$(curl -s https://storage.googleapi.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x kubectl

curl -Lo minikube https://github.com/kubernetes/minikube/release/download/v0.28.0/minikube-linux-amd64

