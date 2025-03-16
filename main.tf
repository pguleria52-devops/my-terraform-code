terraform {
  backend "s3" {
    bucket = "hula-hoop-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "security"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  cidr = var.vpc_cidr
  availability_zone = var.availability_zones
  private_subnet = var.private_subnets
  public_subnet = var.public_subnets
  cluster_name = var.cluster_name
}

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  cluster_version = var.cluster-version
  node_group = var.node_group
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet
}