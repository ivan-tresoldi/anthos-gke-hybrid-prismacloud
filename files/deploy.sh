#!/bin/bash

kubectl create ns evil
kubectl apply -f $LOCAL_REPO_DIR/k8s/deploy.yml -n evil
sleep 20
