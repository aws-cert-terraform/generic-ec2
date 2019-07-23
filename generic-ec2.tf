

data "template_file" "init" {
  template = "${file("user_data_templates/rds-lab-bs.sh.tpl")}"

  // vars {
  //   some_address = "${aws_instance.some.private_ip}"
  // }
}

resource "aws_instance" "worker" {
  ami                    = "${var.ami}"       # use amifind.csh to pick an AMI for this region
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"  # to use a key_pair already registered in AWS
  iam_instance_profile   = "${var.iam_profile_name}"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = "${var.vpc_subnet_id}"
  user_data              = "${data.template_file.init.rendered}"
  associate_public_ip_address = "${var.public}

  # DNS uses Amazon's internal DNS server.  There is no need to create
  # a rule to allow it

  
}


