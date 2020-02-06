environment = "stage"
s3_bucket = "amazon-eks-stage-ahmet"       #Will be used to set backend.tf
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_region = "us-east-1"             #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
vpc_id = "vpc-ebd1ac91"
subnet1 = "subnet-9c072ac0"
subnet2 = "subnet-27614140"
subnet3 = "subnet-1b0d2235"
cluster_name = "stage-cluster"
instance_type = "m4.large"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"
region = "us-east-1"
