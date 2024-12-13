variable "user" {
    description = "Snowflake Username"
    type = string
}

variable "password" {
    description = "Snowflake password"
    type = string
    sensitive = true
}

variable "account_name" {}

variable "organization_name" {}

