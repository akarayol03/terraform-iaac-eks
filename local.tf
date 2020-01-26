resource "null_resource" "login" {
  provisioner "local-exec" {
    command = "aws eks --region us-east-1 update-kubeconfig --name stage-cluster"
    
  }
}
