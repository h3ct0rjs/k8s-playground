## Crear un Deployment y exponerlo con un Service ClusterIP

Primero, creamos un Deployment de ejemplo:

```sh
kubectl create deployment mi-app --image=nginx:1.25.2
```{{exec}}

Ahora, debemos exponer el **Deployment** como un **Servicio** de tipo _ClusterIP_:

pero observemos que previo a esto no tenemos ningun servicio creado:

```bash
kubectl get services
```{{exec}}

Ahora, expongamos el Deployment creado como un Servicio de tipo _ClusterIP_:

```bash
kubectl expose deployment mi-app --port=80 --target-port=80 --name=mi-app-service --type=ClusterIP
```{{exec}}

Puedes validar la lista de servicios disponibles con el siguiente comando:

```bash
kubectl get services
```{{exec}}

Si todo fue exitoso, deberías ver el servicio `mi-app-service` con un tipo `ClusterIP` y una IP asignada. Esta IP es interna al clúster y se utiliza para acceder al servicio desde otros Pods.

Para ello puedes usar la utilidad `curl` para probar el acceso al servicio:

```bash
export CLUSTER_IP=$(kubectl get service mi-app-service -o jsonpath='{.spec.clusterIP}')
curl http://$CLUSTER_IP:80
```{{exec}}

deberias de obtener una respuesta del servidor `nginx`, indicando `Welcome to nginx!` que indica que el servicio está funcionando correctamente.