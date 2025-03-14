#!/bin/bash

echo "Checking primary region status..."
if ! curl -s --head http://primary-region.com | grep "200 OK" > /dev/null; then
    echo "Primary region is down! Switching to failover..."
    terraform apply -auto-approve -var="region=backup-region"
else
    echo "Primary region is operational."
fi

