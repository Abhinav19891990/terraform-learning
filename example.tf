provider "aws" {
  profile = "default"
  //region  = "us-west-2"
  region = var.region
  access_key = "AKIAXHAWTAVMRK5W4OPK"
  secret_key = "uu3l7wPhSP4slLfpKBQRsa8PyHgO5kIiG1oDgny1"
}


resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example.id
}