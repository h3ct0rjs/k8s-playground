## Escalar el Deployment

Supón que necesitamos más instancias de nuestra aplicación. Podemos escalar el Deployment de la siguiente manera utilizando el comando `kubectl scale`:

```bash
kubectl scale deployment/mi-primer-deploy --replicas=4
```{{exec}}

Si volvemos a verificar el estado de los Pods y los **ReplicaSets**, veremos que ahora hay más instancias corriendo:

```bash
kubectl get pods
kubectl get replicasets
```{{exec}}

El **ReplicaSet** se encarga de mantener el número de Pods especificado. Si eliminas un Pod manualmente, el ReplicaSet lo recreará automáticamente.

De la lista de Pods, elige uno para eliminarlo manualmente y observa cómo el ReplicaSet lo recrea:
**Nota**ℹ️ : Los pods deberian tener un nombre similar a `mi-primer-deploy-<id-replicaset>-<pod-id>`, donde `<id-replicaset>, <pod-id>`
son identificadores únicos generados por Kubernetes.
```bash
kubectl delete pod <nombre-del-pod>
```{{exec}}

