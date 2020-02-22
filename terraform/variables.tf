variable "HOME_KEY" {
  default = "home_server"
}

variable "TAGS" {
  type        = map(string)
  default     = {
    Name      = "home server"
    Component = "home server"
    Location  = "AWS"
  }
}

variable "PROVIDER" {
  type         = map(string)
  default      = {
    profile    = "home-server"
    aws_region = "us-east-1"
    path       = "/home/lbperez/.aws/credentials"
  }
}

variable "SECURITY_GROUP" {
  default = "sg-0adfe942d919c214d"
}
