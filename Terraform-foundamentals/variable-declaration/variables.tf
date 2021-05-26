variable "cidr" {
  //arguments
  type = string
  description = "this is a variable which has value for Terraform-VPC cidr range"
}

# String

variable "vpc_name" {
    type = string
}

# Number

variable "vpc_number" {
    type = number
  
}

# Boolean

variable "vpc_exists" {
    type = bool
} 

# List

variable "vpc_list" {
    type = list(string)
    
}

# Tuple

variable "vpc_tuple" {
    type = tuple([string,number,string])
    
}


# Map

variable "vpc_map" {
    type = map
}
# Objects

variable "vpc_object" {
    type = object({Key1=string,Key2=number})
 
}