#!/bin/sh
stern . -n NAMESPACE --kubeconfig /.kube/config >> /data/logs.txt
