provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "remote-state-gnv" {
  bucket = "remote-state-gnv"
}
resource "aws_dynamodb_table" "state-locking" {
  name         = "state-locking"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "local_file" "pet" {
  filename = "/home/venkas/terraform/remote-state/pets.txt"
  content = "I love pets!"
}