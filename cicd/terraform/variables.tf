variable "project_name" {
  description = "Name of this project"
  type        = string
  default     = "seventeen"
}
variable "aws_profile" {
  description = "Value of the aws profile to use for aws credentials"
  type        = string
  default     = "johnb_personal"
}

variable "aws_region" {
  description = "Provides the AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_state_bucket_name_suffix" {
  description = "Name of the S3 Bucket for storing terraform state"
  type        = string
  default     = "tf-state-bucket"
}
