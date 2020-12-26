#! /bin/bash
yum update -y
amazon-linux-extras install -y docker
usermod -a -G docker ec2-user
systemctl enable docker --now
yum install conntrack -y
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && mv minikube /usr/bin/
minikube start --vm-driver=none && minikube addons enable ingress
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/bin/
mkdir /home/ec2-user/.kube
cp /etc/kubernetes/admin.conf /home/ec2-user/.kube/config
chown ec2-user: /home/ec2-user/.kube/config