terraform {
  required_version = ">= 0.12"
}

resource "null_resource" "echo_sha1" {
  provisioner "local-exec" {
    command = "echo $CIRCLE_SHA1"
  }
}
