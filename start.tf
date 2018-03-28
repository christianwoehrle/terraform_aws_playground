provider "aws" { region = "eu-central-1" }


resource "aws_instance" "example" { ami = "ami-74137a1b" instance_type = "t2.micro" } 

