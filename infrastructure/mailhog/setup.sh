#!/bin/bash
helm repo add codecentric https://codecentric.github.io/helm-charts


helm upgrade --install mailhog codecentric/mailhog \
  --version 5.2.3 \
  --create-namespace \
  --namespace mailhog -f values.yaml

