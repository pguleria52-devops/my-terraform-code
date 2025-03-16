output "cluster-endpoints" {
  description = "values of the cluster endpoints"
  value = module.eks.cluster_endpoints
}

output "cluster-name" {
  description = "Name of the EKS cluster"
  value = module.eks.cluster_name
}

output "vpc_id" {
  description = "value of the VPC ID"
  value = module.vpc.vpc_id
}