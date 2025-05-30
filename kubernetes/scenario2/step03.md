## Escalar el Deployment

Supón que necesitamos más instancias de nuestra aplicación. Podemos escalar el Deployment de la siguiente manera utilizando el comando `kubectl scale`:

```bash
kubectl scale deployment/mi-primer-deploy --replicas=4
```{{exec}}

Si volvemos a verificar el estado de los pods y los ReplicaSets, veremos que ahora hay más instancias corriendo:

```bash
kubectl get pods
kubectl get replicasets
```{{exec}}

El ReplicaSet se encarga de mantener el número de pods especificado. Si eliminas un pod manualmente, el ReplicaSet lo recreará automáticamente.

```bash
kubectl delete pod <nombre-del-pod>
```{{exec}}

