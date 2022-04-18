provider "aws"{
    region = "us-east-2"
}

resource "aws_s3_bucket" "gnv-terraform" {
    bucket = "gnv-terraform"
}

resource "aws_s3_bucket_object" "pets" {
  source = "/home/venkas/terraform/output/pets.txt"
  key = "pets.txt"
  bucket = aws_s3_bucket.gnv-terraform.id
}