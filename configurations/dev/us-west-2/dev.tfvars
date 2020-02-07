environment = "dev"
s3_bucket = "amazon-eks-dev-ahmet"   #Will be used to set backend.tf
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_region = "us-west-2"             #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
vpc_id = "vpc-eedd5896"
subnet1 = "subnet-a4f6c6ef"
subnet2 = "subnet-ea869193"
subnet3 = "subnet-b68a6beb"
cluster_name = "dev-cluster"
instance_type = "t2.micro"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"
region = "us-west-2"
