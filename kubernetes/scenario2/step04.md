## Actualizando la imagen del Deployment (Rolling Update)

Supón que quieres actualizar la versión de NGINX. Puedes hacerlo así:

```bash
kubectl set image deployment/mi-primer-deploy nginx=nginx:1.26.0
```

Verifica el estado del Deployment y los ReplicaSets:

```sh
kubectl get deployments
kubectl get replicasets
kubectl describe deployment mi-primer-deploy
```

Kubernetes creará un nuevo ReplicaSet para la nueva versión y eliminará gradualmente los pods antiguos (rolling update).


