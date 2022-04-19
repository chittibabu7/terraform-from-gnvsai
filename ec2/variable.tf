variable "ami" {
  default = "ami-0fb653ca2d3203ac1"
}

variable "instancetype" {
   default = "t2.micro"
}

variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

variable "public-subnet" {
  default = "10.0.1.0/24"
}

variable "publicKey" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjz3BuLeQsqoavu1k8/AMMNle1aO3PuBWSyHE2kh7pc8uXyZBqRz8mmFcufD3PI0RWHcDWbR73Ez9SgFX/joKObLloVh+yX7LjOiDVDsv+bcTPe8WOC8Lghx6lzrXmKwYJJNi3U7vXHlIouv2AVgJMmu1Xr0CIi0QkM6edPvEcI80EwOvmq8JyDUvazJEk4YqVmVplYZRaSrxMBv82qflqiMr1fG8j5bT1L7tleTwvDqKAmcZO0ZLwCNhvqQBn7CG7ecBEWHfl4VaesnqpD21AvuVAxWe1kcR/xlGDM1kYPzxWkjuItiB2XZPvtZMErOMcT/cPXvfIQ2dm7vJNHzj7Rfg0icrWpM4zCwf92KF8iDca0fJHx2VV4V9sQhDVy+NiNcFMdQMT8e6aHHltPmwVQF0tGAyRcdaTbQaLi7uSDn6zCQkyXXPAdvhJh5fH/cSLEECA5FMDfid+n+UTo6rHPcR9R1wImI6PRoeBWBvlUL5vgxwr3XIG3xxmofRC+I8= venkas@682HQ92"
}