terraform{
  backend "remote" {
  organization = "terraform-abhinav343"
  workspaces {
      name = "terraform-learning"
    }
  }

provider "aws" {
  profile = "default"
  //region  = "us-west-2"
  region = var.regioncd ../
}


resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example.id
}

}
backend "remote" {
  organization = "<ORG_NAME>"
  workspaces {
      name = "Example-Workspace"
    }
  }

provider "aws" {
  profile = "default"
  //region  = "us-west-2"
  region = var.regioncd ../
}


resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example.id
}
