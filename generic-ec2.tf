

resource "aws_instance" "worker" {
  ami             = "${var.ami}"       # use amifind.csh to pick an AMI for this region
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"  # to use a key_pair already registered in AWS

  # DNS uses Amazon's internal DNS server.  There is no need to create
  # a rule to allow it

  security_groups = ["ingress_ssh", "egress_http", "egress_https"]
}


#
# export a variable
#
output "host1.ip" {
  value = "${aws_instance.host1.public_ip}"
}
