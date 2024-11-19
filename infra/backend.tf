terraform {
  backend "s3" {
    bucket         = "just-a-normal-nahum-bucket"
    key            = "terraform/state/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
