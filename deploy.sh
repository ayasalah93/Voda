if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
kubectl run $DEPLOYMENT_NAME --image=$IMAGE_NAME --replicas=$REPLICAS --output=yaml --dry-run > "$IMAGE_NAME-rc.yaml"
kubectl create -f "$IMAGE_NAME-rc.yaml"
fi
