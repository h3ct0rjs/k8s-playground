## Paso 2: Exponer el Service como NodePort

Supón que quieres acceder a tu aplicación desde fuera del clúster (por ejemplo, desde tu máquina local). Cambia el tipo de Service a NodePort:

```sh
kubectl delete service mi-app-service
kubectl expose deployment mi-app --port=80 --target-port=80 --name=mi-app-service --type=NodePort
```

Verifica el puerto asignado:

```sh
kubectl get services
```

Busca el valor de `NodePort` y accede a la aplicación usando la IP del nodo y ese puerto. Por ejemplo:

```
http://<IP-del-nodo>:<NodePort>
```

Esto expone tu aplicación fuera del clúster, útil para pruebas y desarrollo.