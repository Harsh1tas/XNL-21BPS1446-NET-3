#!/bin/bash

echo "Scaling down infrastructure..."

terraform apply -auto-approve -var="instance_count=1"

echo "Scale-down completed!"

