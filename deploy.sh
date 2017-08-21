if [[ $(kubectl get deployments | grep testkube) ]]; then
echo "deployments exists"
else
kubectl run testkube --image=ayasalah93/voda --replicas=2 --output=yaml --dry-run > "ayasalah93/voda-rc.yaml"
kubectl create -f "ayasalah93/voda-rc.yaml"
fi
