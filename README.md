# terraform
Terraform code to provision ec2 instance (for custom specs edit values.tfvars) and run userdata.
userdata will install docker, minikube, and apply deployment, service and ingress for helloworld.

```
export AWS_ACCESS_KEY_ID=
export AWX_SECRET_ACCESS_KEY=
terraform apply --var-file=values.tfvars --auto-approve
```
