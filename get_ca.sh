# get-cluster-ca.sh

#!/bin/bash

# Fetch the AKS cluster CA certificate and store it in a JSON file
ca=$(az aks show --resource-group $RESOURCE_GROUP_NAME --name $CLUSTER_NAME --query 'aadProfile.clientAppID' -o json)
echo "{\"ca\": \"$ca\"}" > $AZ_SCRIPTS_OUTPUT_PATH
