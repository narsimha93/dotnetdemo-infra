variable "sbcusdbcsdb" {
  type=string
  description = "Provide Access Key"
}

variable "secret" {
  type=string
  description = "Provide Secret Key"
  default = ""
}

variable "bucket_name" {
  type=string
  description = "Provide Bucket Name"
  default = "bermtec"
}