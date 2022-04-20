terraform {
  backend "s3" {
    bucket         = "seventeen-tf-state-bucket"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "alias/terraform-bucket-key"
    dynamodb_table = "terraform-state"
    profile        = "johnb_personal"
  }
}
