## Creando un Servicio de tipo ClusterIP

Primero, necesitamos crear un Deployment de ejemplo. Vamos a crear un Deployment que ejecuta una imagen de `nginx`,
pero podria ser cualquier otra aplicación que desees exponer:

```bash
kubectl create deployment mi-app --image=nginx:1.25.2
```{{exec}}

Ahora, debemos exponer el **Deployment** como un **Servicio** de tipo _ClusterIP_:

pero observemos que previo a esto no tenemos ningun servicio creado:

```bash
kubectl get services
```{{exec}}

Ahora, expongamos el **Deployment** creado como un Servicio de tipo **_ClusterIP_**:

```bash
kubectl expose deployment mi-app --port=80 --target-port=80 --name=mi-app-service --type=ClusterIP
```{{exec}}

Puedes validar la lista de servicios disponibles con el siguiente comando:

```bash
kubectl get services
```{{exec}}

Si todo fue exitoso, deberías ver el servicio `mi-app-service` con un tipo `ClusterIP` y una IP asignada.
Esta IP es interna al clúster y se utiliza para acceder al servicio desde otros Pods.

Para ello puedes usar la utilidad `curl` para hacer una solicitud HTTP y probar el acceso al servicio:

```bash
export CLUSTER_IP=$(kubectl get service mi-app-service -o jsonpath='{.spec.clusterIP}')
curl http://$CLUSTER_IP:80
```{{exec}}

Recuerda que esto solo funciona dentro del clúster, ya que `ClusterIP` es un tipo de servicio que no expone el servicio al exterior del clúster.
Si todo ha ido bien, deberías ver una respuesta del servidor `nginx`, indicando `Welcome to nginx!` que indica que el servicio está funcionando correctamente.

Limpiemos el entorno eliminando el servicio creado:

```bash
kubectl delete service mi-app-service
```{{exec}}
