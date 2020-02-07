# terraform-iaac-eks
# Please go through those steps.
Added SSH keys in /home/centos 
Installed wget unzip git 
downloaded terraform version 12.19
unzipped and moved to /bin folder
created repo
bastion host public key added to Github

Created those environments below
/configurations/dev/region/dev.tfvars
/configurations/dev/region/qa.tfvars
/configurations/dev/region/stage.tfvars
/configurations/dev/region/prod.tfvars

Created s3 folder manually for each environment and added to tfvars file into each environment or by using AWS CLI
aws s3 mb s3://bucket-name --region (region-name)

Then add values for those variables below in tfvars file
region = ""
s3_bucket = "" #Will be used to set backend.tf
s3_folder_project = "" #Will be used to set backend.tf
s3_folder_region = "" #Will be used to set backend.tf
s3_folder_type = "" #Will be used to set backend.tf
s3_tfstate_file = "" #Will be used to set backend.tf
vpc_id = ""
subnet1 = ""
subnet2 = ""
subnet3 = ""
cluster_name = "dev-cluster"
instance_type = "t2.micro"
asg_max_size = "48"
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"

by the way we installed kubectl and AWS authenticator
Install kubectl.
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
Install aws-iam-authenticator
# curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
# chmod +x aws-iam-authenticator

Install AWS CLI
yum install awscli -y
Build EKS with Module

Run on terraform_0.12.19

took out hardcodes by keeping in tfvars and created variable.tf file (see content below)
variable "vpc_id" {}
variable "subnet1" {}
variable "subnet2" {}
variable "subnet3" {}
variable "cluster_name" {}
variable "environment" {}
variable "instance_type" {}
variable "asg_max_size" {}
variable "asg_min_size" {}
variable "cluster_version" {}
variable "s3_folder_project" {}
variable "s3_folder_region" {}
variable "s3_folder_type" {}
variable "s3_tfstate_file" {}
variable "s3_bucket" {}
variable "region" {}
variable "asg_desired_capacity" {}

run local.tf commands

then 

kubectl config set-cluster dev-cluster

aws eks --region eu-west-2  update-kubeconfig --name my-cluster 
Instances and kubernetes should be on the same VPC since our kubernetes is local 
kubectl get ns  
