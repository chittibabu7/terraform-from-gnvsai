terraform {
  backend "s3" {
      bucket = "remote-state-gnv"
      key = "terraform.tfstate"
      region = "us-east-2"
      dynamodb_table = "state-locking"
  }
}