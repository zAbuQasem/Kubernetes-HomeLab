#!/bin/bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx --atomic --version 4.10.0 --namespace ingress-nginx --create-namespace --values values.yaml
