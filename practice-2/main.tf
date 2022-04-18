resource "local_file" "things-to-do" {
    filename    =    "/home/venkas/terraform/practice-2/things-to-do.txt"
    content = "Clean my room before Good Friday\n And complete the terraform by this weekend"
}

resource "local_file" "more-things-to-do" {
    filename    =    "/home/venkas/terraform/practice-2/more-things-to-do.txt"
    content = "I should start learning guitar from next month"
}