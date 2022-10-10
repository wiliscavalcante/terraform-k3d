k3d_cluster_name    = ["cluster-prod"]
k3d_cluster_port    = 6560
k3d_cluster_ip      = "127.0.0.1"
k3d_cluster_lb_port = 30000
k3d_host_lb_port    = 8081
server_count        = 1     # Increase to >=3 for HA cluster
agent_count         = 2
k3s_version         = "v1.19.8-k3s1"