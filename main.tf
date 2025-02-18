provider "aws" {
  region = "us-west-2"  # Change to your preferred region
}

resource "aws_lightsail_container_service" "nanomdm" {
  name        = "nanomdm-k8s"
  power       = "small"
  scale       = 1  # Number of nodes
  is_disabled = false
}

resource "aws_lightsail_container_service_deployment_version" "nanomdm_deploy" {
  service_name = aws_lightsail_container_service.nanomdm.name

  container {
    container_name = "nanomdm"
    image          = "ghcr.io/micromdm/nanomdm:latest"

    # Override the default command to explicitly pass required flags
    command = [
      "/nanomdm",
      "-listen", ":9000",
    ]

    environment = {}

    ports = {
      9000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "nanomdm"
    container_port = 9000

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }
}

output "nanomdm_endpoint" {
  value = aws_lightsail_container_service.nanomdm.url
}


