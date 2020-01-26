resource "null_resource" "login" {
  provisioner "local-exec" {
    command = "aws eks --region $region update-kubeconfig --name $cluster_name"
    interpreter = ["bash", "-e"]
  }
}
