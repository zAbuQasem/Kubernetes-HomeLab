#!/bin/bash

if [[ ! -f "values.yaml" ]];then
  wget https://raw.githubusercontent.com/sse-secure-systems/connaisseur/master/helm/values.yaml 
fi

helm repo add connaisseur https://sse-secure-systems.github.io/connaisseur/charts
helm upgrade --install connaisseur connaisseur/connaisseur --atomic --create-namespace --namespace connaisseur --values values.yaml
