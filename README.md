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

### Booststrapping of Alpine Nodes
```
wget https://raw.githubusercontent.com/kweronek/k3s-alpine/main/setup-node && chmod 744 * && sudo ./setup-node
```
#### Provisioning of K3s-server
```
sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--disable-agent --write-kubeconfig-mode 644" sh -  
```
```
sudo cat /var/lib/rancher/k3s/server/node-token
```
#### Provisioning of K3s-worker
```
sudo curl -sfL https://get.k3s.io | K3S_URL=https://ec2-XX-XX-XX-XX.compute-1.amazonaws.com:6443 K3S_TOKEN=K10d....46b9 sh -
```

