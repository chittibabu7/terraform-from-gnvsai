provider "aws"{
    region = "us-east-2"
}
resource "aws_iam_user" "demo-user" {
  name = "gnvsai"
}

resource "aws_iam_policy" "demoUser" {
  name = "AdminUsers"
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
resource "aws_iam_user_policy_attachment" "gnv-admin-access" {
  user = aws_iam_user.demo-user.name
  policy_arn = aws_iam_policy.demoUser.arn
}
    