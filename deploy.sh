if [[ $(kubectl get deployments | grep testkube) ]]; then
echo "deployments exists"
else
kubectl run testkube --image=ayasalah93/voda --replicas=2 --output=yaml --dry-run > "voda-rc.yaml"
kubectl create -f "voda-rc.yaml"
fi
