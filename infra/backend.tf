terraform {
  backend "s3" {
<<<<<<< HEAD
    bucket         = "davshe-technion-cicd-13579"
=======
    bucket         = "just-a-normal-nahum-bucket"
>>>>>>> 7e1ad4fce5ff3236a6c8f82ee1c3bdbc337de55e
    key            = "terraform/state/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
