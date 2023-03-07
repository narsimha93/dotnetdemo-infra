variable "access_key" {
  type=string
  description = "Provide Access Key"
}

variable "secret_key" {
  type=string
  description = "Provide Secret Key"
}

variable "bucket_name" {
  type=string
  description = "Provide Bucket Name"
  default = "bermtec"
}