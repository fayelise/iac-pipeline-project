resource "null_resource" "vm" {

  provisioner "local-exec" {
    command = "cd ../vagrant && vagrant up"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "cd ../vagrant && vagrant destroy -f"
  }
}
