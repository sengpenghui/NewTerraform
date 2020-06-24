provider "aws" {
    region="us-east-1"
}

variable "instance_type" {
  description = "あアｱ１1ａa中表鷗㊞屢울가繁體áé丵-g11n-AWS12356"
  default     = "t2.micro"
}

variable "department" {
  description = "あアｱ１1ａa中表鷗㊞屢울가繁體áé丵-g11nDepartment tag"
}

resource "aws_instance" "machine1" {
    ami           = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"

    tags = {
        department = var.department
    }
}

resource "aws_instance" "machine2" {
    ami           = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"

    tags = {
        department = var.department
    }
}
