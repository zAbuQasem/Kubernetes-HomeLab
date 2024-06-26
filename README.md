
# Kubernetes HomeLab
## Overview
Kubernetes HomeLab is a project designed to provide a hands-on environment for learning and experimenting with Kubernetes clusters. It is built on top of [vagrant-kubeadm-kubernetes](https://github.com/techiescamp/vagrant-kubeadm-kubernetes) with some security related features.

## Features
- Nginx-Ingress using [MetalLB](https://metallb.universe.tf/)
- Local SMTP Server using [MailHog](https://github.com/mailhog/MailHog)
- Container Image Signature Verification using [Connaisseur](https://github.com/sse-secure-systems/connaisseur)

## Prerequisites
Follow [vagrant-kubeadm-kubernetes](https://github.com/techiescamp/vagrant-kubeadm-kubernetes) instructions to deploy and setup access to your local cluster.

## Installation
1. Clone the Repository:
```bash
git clone https://github.com/zAbuQasem/Kubernetes-HomeLab
cd Kubernetes-HomeLab
```
1. Setup Metallb IPAddressPool
```sh
# Make sure to change the address range to non-allocated IPs
kubectl apply -f infrastructure/metallb/configure.yaml
```
2. Deploy Ingress-Nginx
```sh
cd infrastructure/ingress-nginx
./setup.sh
```
3. Deploy MailHog
```sh
cd infrastructure/mailhog
./setup.sh
```
4. Deploy Connaisseur
```sh
cd infrastructure/connaisseur
./setup.sh
```
> **Note:** Read the `README.md` in `infrastructure/connaisseur/README.md` For more information.


## Roadmap
- ~~Build a Github Action CI to build and sign container images and push them to Container Registry.~~
- ~~Build a SAST Github action.~~
- Create ArgoCd App of Apps Deployment.
- Create Users and Groups with least privilege in mind.
