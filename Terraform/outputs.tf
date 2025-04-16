output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = module.eks.cluster_security_group_id
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "argocd_server_url" {
  description = "ArgoCD server URL"
  value       = "https://${kubernetes_namespace.argocd.metadata[0].name}.${var.cluster_name}.${var.region}.eks.amazonaws.com"
}
