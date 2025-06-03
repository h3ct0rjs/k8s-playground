## Actualizando la imagen del Deployment (Rolling Update)

Supón que quieres actualizar la versión de `nginx`. Puedes hacerlo así:

```bash
kubectl set image deployment/mi-primer-deploy nginx=nginx:1.26.0
```{{exec}}

Si revisamos nuestras **ReplicaSets** , veremos que se ha creado un nuevo **ReplicaSet** para la nueva versión de la imagen:

```bash
kubectl get replicasets
```{{exec}}

Como vemos en la salida, el nuevo **ReplicaSet** tiene un nombre similar a `mi-primer-deploy-<id-replicaset>`,
donde `<id-replicaset>` es un identificador único generado por Kubernetes.

En todo momento Kubernetes mantiene el número de **ReplicaSet** especificado en el Deployment, y
los Pods antiguos se eliminan gradualmente (rolling update).

## Regresando a la Version Anterior (Rolling Back)

Ahora si por algún motivo algo salió mal con el **Deployment** haremos un **rollback**, volveremos a la versión anterior,
para ello utilizamos el siguiente comando:

```bash
kubectl rollout undo deployment/mi-primer-deploy
```{{exec}}

Kubernetes revertirá al estado anterior, eliminando el nuevo ReplicaSet y restaurando los Pods de la versión anterior.

Si verificamos el estado del Deployment y los ReplicaSets:
```bash
kubectl get deployments
kubectl get replicasets
kubectl describe deployment mi-primer-deploy
```{{exec}}

⚠️: Es posible que en el entorno de trabajo el replicaSet no se elimine inmediatamente, ya que Kubernetes puede mantenerlo por un tiempo para facilitar el rollback, estableciendo el ReplicaSet con valores de `0`.
