#!/bin/bash

# Stop the ThingsBoard service
echo "Stopping ThingsBoard service..."
sudo systemctl stop thingsboard.service

# Stop the Kafka service
echo "Stopping Kafka service..."
sudo systemctl stop kafka.service

# Stop the Reporting service
echo "Stopping Reporting service..."
sudo systemctl stop reporting.service

# Stop the ThingsBoard Gateway Docker container
echo "Stopping ThingsBoard Gateway Docker container..."
docker stop tb-gateway

sudo systemctl stop forticlient.service
docker stop tb-gateway-pool
echo "All services stopped."

conda deactivate

