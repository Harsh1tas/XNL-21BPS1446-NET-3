#!/bin/bash

echo "Scaling up infrastructure..."

terraform apply -auto-approve -var="instance_count=5"

echo "Scale-up completed!"

