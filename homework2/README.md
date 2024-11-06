# PostgreSQL and pgAdmin application deployment to Kubernetes

## PostgreSQL and pgAdmin
This example provides a base setup for using [PostgreSQL](https://www.postgresql.org/) and [pgAdmin](https://www.pgadmin.org/).
More details on how to customize the installation and the compose file can be found [here (PostgreSQL)](https://hub.docker.com/_/postgres) and [here (pgAdmin)](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html).

This directory contains set of Kubernetes object/resources definitions to deploy [PostgreSQL and pgAdmin](https://github.com/docker/awesome-compose/tree/master/postgresql-pgadmin) to Kubernetes.

These resources will be created:

* PostgreSQL deployment
* PostgreSQL internal service
* pgAdmin application deployment
* pgAdmin application service (external LoadBalancer)
* Secret to store PostgreSQL credentials
* ConfigMap to store application configuration, i.e. PostgreSQL connection details
* Persistent Volume Claim to be used in PostgreSQL deployment


Deploy this application to Minikube or any other cluster:

```
kubectl apply -f .
```

Serve proxy to external NodeJS service (minikube example):
```
minikube tunnel
```

Open on `http://localhost:5050/`