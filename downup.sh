#!/bin/sh

#kubectl apply -f pvc.yml
cp ~/.kube/config script/
kubectl delete configmap stern-config
kubectl delete -f stern-logger.yml
sleep 5 & 
kubectl create configmap stern-config --from-file=script/
kubectl apply -f stern-logger.yml

