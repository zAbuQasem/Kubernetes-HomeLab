#!/bin/bash

# Set the following environment variables
export REPO_OWNER="zAbuQasem"
export REPO_NAME="Kubernetes-HomeLab"
export GITHUB_TOKEN="TOKEN" # GitHub token with repo access
export COSIGN_PASSWORD='STRONG_PASSWORD' # Password for the generated key pair

# Define colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

print_success() {
    echo -e "${GREEN}[+] $1${NC}"
}

print_error() {
    echo -e "${RED}[!] Error: $1${NC}" >&2
    exit 1
}

echo -e "${GREEN}[@] Generating key pair for cosign${NC}"

# Generate key pair for cosign
cosign generate-key-pair github://$REPO_OWNER/$REPO_NAME || print_error "Failed to generate key pair"

print_success "Key pair generated successfully"
