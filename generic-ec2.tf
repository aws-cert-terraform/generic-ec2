

resource "aws_instance" "worker" {
  ami             = "${var.ami}"       # use amifind.csh to pick an AMI for this region
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"  # to use a key_pair already registered in AWS

  # DNS uses Amazon's internal DNS server.  There is no need to create
  # a rule to allow it

  
}


