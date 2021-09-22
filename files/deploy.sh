kubectl create ns evil
kubectl apply -f /workspace/k8s/deploy.yml -n evil
sleep 20
