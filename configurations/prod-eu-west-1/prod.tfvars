environment = "prod-eu-ireland"
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
instance_type = "m4.large"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"


# Mandatory changes per region
cluster_name = "prod-cluster-ahmet"
s3_bucket = "amazon-eks-prod-ahmet"        #Will be used to set backend.tf
s3_folder_region = "eu-west-1"             #Will be used to set backend.tf
region = "eu-west-1"
vpc_id = "vpc-dc8396ba"
subnet1 = "subnet-9e7533f8"
subnet2 = "subnet-ae0352e6"
subnet3 = "subnet-9d30b0c7"
