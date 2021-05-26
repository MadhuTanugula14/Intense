## TERRAFORM CONFIGURATION SYNTAX ##

# 3. Syntax constructs - Blocks 
a) A block is simply a container
b) It containes some content
c) A block will have a TYPE - resource, input variables, output values, data sources etc 
d) Lables are followed by TYPE
e) A blocks body is delimited by { }

resource "aws_instance" "terraform_lab_instance" {
  region = "us-east-1"
  ami = "12345678"

}