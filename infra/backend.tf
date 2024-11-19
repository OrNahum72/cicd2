terraform {
  backend "s3" {
    bucket         = "just-a-simple-s3-bucket-testing"
    key            = "terraform/state/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
