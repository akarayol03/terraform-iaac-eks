environment = "prod"
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
instance_type = "m4.large"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"


# Mandatory changes per region
cluster_name = "prod-eu-cluster"
s3_bucket = "amazon-eks-prod-team4"   #Will be used to set backend.tf
s3_folder_region = "eu-central-1"             #Will be used to set backend.tf
region = "eu-central-1"
vpc_id = "vpc-a8527cc3"
subnet1 = "subnet-5ff8ee34"
subnet2 = "subnet-d0abe6ad"
subnet3 = "subnet-d679299b"
