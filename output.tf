output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}

output "amazon image" {
  value = "${data.aws_ami.ubuntu.id}"
}

output "autoscaling group max intances" {
  value = "${aws_autoscaling_group.example.max_size}"
}
