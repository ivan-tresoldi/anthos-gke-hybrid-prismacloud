#!/bin/bash

# Set default Environment Variables
source $WORK_DIR/build_vars

kubectl create ns evil
kubectl apply -f $WORK_DIR/$LOCAL_REPO_DIR/k8s/deploy.yml -n evil
sleep 20
