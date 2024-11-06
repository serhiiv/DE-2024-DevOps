# start k8s
minikube start --nodes=3


# start app
kubectl apply -f .


sleep 3

kubectl get events --sort-by=.metadata.creationTimestamp


kubectl get node


kubectl get pods -o wide


kubectl get services  


kubectl get pvc


kubectl get pv


kubectl get configmaps


kubectl get secret


# Serve proxy to external PgAdmin on http://localhost:5050/
minikube tunnel


# stop app
kubectl delete -f .


minikube delete
