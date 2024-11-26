resource "aws_security_group" "example" {
<<<<<<< HEAD
  name        = "david-cicd-sg-${var.environment}"
=======
  name        = "cicd-sg-${var.environment}"
>>>>>>> 7e1ad4fce5ff3236a6c8f82ee1c3bdbc337de55e
  description = "Security group for ${var.environment} environment"
  vpc_id      = "${var.vpc_id}"

  dynamic "ingress" {
    for_each = local.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = merge(
    {
      Name        = "cicd-sg-${var.environment}"
      Environment = var.environment
    },
    var.environment == "dev" ? { Dev = "true" } : {}
  )
}
