provider "aws"{
    region = "us-east-2"
}
resource "aws_iam_user" "user-gnv" {
  name = "GnvsaiTerraform"
}

resource "aws_iam_policy" "userGnv" {
  name = "AdministratorAccess"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "gnv-access" {
  user = aws_iam_user.user-gnv.name
  policy_arn = aws_iam_policy.userGnv.arn
}

resource "aws_instance" "ec2-terraform" {
  ami = var.ami
  instance_type = var.instancetype
  tags = {
    Name = "GNVSAI"
  }
  

  key_name = "key"

  connection {
    type = "ssh"
    
    private_key = file("/home/venkas/terraform/ec2/key")
  }
}

resource "aws_key_pair" "key" {
  key_name = "key"  
  public_key = var.publicKey
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"
  tags = {
    Name = "Gnv-Vpc"
  }
}

resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public-subnet

  tags = {
    Name = "Gnv-public"
  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Gnv-IGW"
  }
}

resource "aws_route_table" "route" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Gnv-route"
  }
}



resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub.id
  route_table_id = aws_route_table.route.id
}

resource "aws_security_group" "sg" {
  name        = "Gnv-sg"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.vpc.cidr_block]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "Gnv-sg"
  }
}





    