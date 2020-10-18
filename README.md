# k3s-alpine setup

## Launch AWS-EC2-Instance
### Alpine-AMI
Alpine Linux 3.12.0:
AMI: alpine-ami-edge-x86_64-20200425232123 (ami-097be5ea1a5c7b6ce)

### AWS-EC2.Instance
#### Minimum Hardware Requirement
Master: Disk 1GB, RAM   1GB, 1vCPU --> t2.micro, t3.micro, t3a.micro
Worker: Disk 1GB, RAM 500MB, 1vCPU --> t2.nano, t3.nano, t3a.nano

#### Recommended Hardware
Master: Disk 2GB, RAM   2GB, 2vCPU --> t3.small, t3a.small
Worker: Disk 2GB, RAM   2GB, 2vCPU --> t3.small, t3a.small

## Config Alpine Node

### Setup Alpine Node
wget https://raw.githubusercontent.com/kweronek/k3s-alpine/main/setup-node && chmod 744 * && sudo ./setup-node

#### K3s-server
sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--disable-agent --write-kubeconfig-mode 644" sh -  
sudo cat /var/lib/rancher/k3s/server/node-token

#### K3s-worker
sudo curl -sfL https://get.k3s.io | K3S_URL=https://ec2---------.amazonaws.com:6443 K3S_TOKEN=K10ec0460011c7783d59ea19cb0e88b0d189df48d01da0faf8fe13be58e8ad66549::server:b701ef3a4cb3e57f4b8decfc002c46b9 sh -

