# k3s-alpine setup

wget https://raw.githubusercontent.com/kweronek/k3s-alpine/main/setup-node > sh - && chmod 744 *

sudo ./

# K3s-server
sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--disable-agent --write-kubeconfig-mode 644" sh -
sudo cat /var/lib/rancher/k3s/server/node-token
hostname -f

# K3s-worker
sudo curl -sfL https://get.k3s.io | K3S_URL=https://ec2-3-210-181-62.compute-1.amazonaws.com:6443 K3S_TOKEN=K10ec0460011c7783d59ea19cb0e88b0d189df48d01da0faf8fe13be58e8ad66549::server:b701ef3a4cb3e57f4b8decfc002c46b9 sh -
