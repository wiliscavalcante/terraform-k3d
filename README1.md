# Local kubernetes cluster powered by k3d

This terraform module is for creating a local kubernetes cluster using k3d

## 

example usage: 
* `cp terraform.tfvars.example terraform.tfvars`
* `terraform init`
* `terraform apply`

## Requirements

* terraform 0.13+: https://github.com/tfutils/tfenv
* kubectl 1.15+: https://kubernetes.io/docs/tasks/tools/install-kubectl/
* docker: https://docs.docker.com/install/
* k3d: https://github.com/rancher/k3d

## Read more

* https://learn.hashicorp.com/tutorials/terraform/associate-study
* https://github.com/rancher/k3d

## Setup terraform
terraform init -backend-config=backend-config/uat.tfvars
terraform plan --var-file=variables-uat.tfvars -out=uat.plan
terraform destroy 

## multi environment
terraform init -reconfigure -backend-config=backend-config/prod.tfvars

##Using make to setup terraform
### Init
make init ENV=uat

### Plan
make plan ENV=uat