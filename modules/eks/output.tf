output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
  description = "EKS cluster endpoint"
}

output "cluster_name" {
  description = "EKS Cluster name"
  value = aws_eks_cluster.main.name
}