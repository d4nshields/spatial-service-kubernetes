#!/bin/bash
# Generate a 9-character random password
export DB_PASSWORD=$(openssl rand -base64 9)  

# Create the Secret
kubectl create secret generic spatial-service-db-creds \
    --from-literal=username=geo \
    --from-literal=password=$DB_PASSWORD
