provider "aws" { region = "eu-central-1" }


resource "aws_instance" "example" { ami = "ami-74137a1b" instance_type = "t2.micro" tags { Name = "terraform-example" }
vpc_security_group_ids = ["${aws_security_group.instance.id}"]

 }

 resource "aws_security_group" "instance" { name = "terraform-example-instance" ingress { from_port = 8080 to_port = 8080 protocol = "tcp" cidr_blocks = ["0.0.0.0/0"] } }

 output "public_ip" {
   value = "${aws_instance.example.public_ip}"
 }
