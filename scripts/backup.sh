#!/bin/bash

echo "Starting backup process..."

# AWS Backup
aws s3 sync /data s3://my-backup-bucket --storage-class STANDARD_IA

# GCP Backup
gsutil -m rsync -r /data gs://my-backup-bucket

# Azure Backup
az storage blob upload-batch -d my-container --account-name mystorageaccount -s /data

echo "Backup completed successfully!"

