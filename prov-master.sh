
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="
  --cluster-cidr=10.244.0.0/16 
  --no-deploy traefik 
  --no-deploy servicelb" 
  sh -
  
