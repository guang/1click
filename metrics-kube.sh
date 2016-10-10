kubectl delete -f $HOME/1click/fusion-metrics-api-controller-local.json
kubectl create -f $HOME/1click/fusion-metrics-api-controller-local.json --validate=false
kubectl get pods | grep 'fusion-metrics'
