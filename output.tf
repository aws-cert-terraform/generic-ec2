
output "worker-ip" {
  value = "${aws_instance.worker.public_ip}"
}

output "instance_id" {
  value = "${aws_instance.worker.id}"
}
