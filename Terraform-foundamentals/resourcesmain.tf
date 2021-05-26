## TERRAFORM CONFIGURATION SYNTAX ##

# 4. Identifiers 
a) Block TYPE name
b) Names of an argument
c) Names of resources, input variables, output values etc .. are all known as Identifiers
d) Identifiers can contain letters, digits, underscores (_), and hyphens (-)
e) The first character of an identifier must not be a digit


resource "aws_instance" "terraform_lab_instance" {
  region = "us-east-1"
  ami = "12345678"

}

variable "instance_type" {
      type = string
      default = "t2.medium"
 }

output "instance_id" {
    value = aws_instance.terraform_lab_instance.id
}