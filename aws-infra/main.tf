terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.24.0"
    }
    // Below block created as a solution to error I was facing.
    // Error : https://discuss.hashicorp.com/t/no-resource-schema-found-for-local-file-in-terraform-cloud/34561/3

    local = {
      version = "~> 2.1"
    }
  }

  backend "s3" {
    bucket = "tfstate-backend-store" // Name of the s3 bucket storing the tfstate files.
    key    = "aws-ec2-on-aap" // Specific name of the tfstate file.
    region = "ap-southeast-2"

  }
  // When migrating from local .tfstate to the s3 backend,I used the flag migrate-state.
  // Example : $ terraform init -migrate-state

  // If updated the backend : $ terraform init -reconfigure
}
