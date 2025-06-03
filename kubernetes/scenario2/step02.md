## 🔵 Deployments !!!
En resumen nuevamente 😊, un **Deployment** :
- Crea 📦Pods automáticamente a través de un **ReplicaSet**.
- Escala el número de réplicas (hacia arriba🔼 o hacia abajo🔽).
- Hace actualizaciones controladas (rolling updates) o según la estrategia de despliegue.
- Restaura el estado anterior si algo sale mal (rollbacks).
- Supervisa la salud de los 📦Pods durante su ciclo de vida.


## 🧑‍💻  Crear tu primer Deployment

➡️  Vamos a crear un **Deployment** que ejecute un servidor web, como `nginx` usado durante el Workshop.

```bash
kubectl create deployment mi-primer-deploy --image=nginx:1.25.2
```{{exec}}

El comando anterior crea un Deployment llamado `mi-primer-deploy` que utiliza la imagen de Nginx versión 1.25.2.


Si verificamos que el **Deployment** y el **ReplicaSet** se hayan creado:

```bash
kubectl get deployments
kubectl get replicasets
kubectl get pods
```{{exec}}

Observa cómo el **Deployment** crea y gestiona automáticamente un **ReplicaSet**, y este a su vez crea los 📦Pods necesarios.

