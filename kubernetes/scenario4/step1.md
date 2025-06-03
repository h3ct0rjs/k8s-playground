## Usar un volumen simple (emptyDir)

Vamos a crear un Pod que use un volumen temporal de tipo `emptyDir`.

Para esto, crearemos un archivo llamado `pod-emptydir.yaml` con el siguiente contenido:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-emptydir
spec:
  containers:
    - name: app
      image: busybox
      command: ["sleep", "3600"]
      volumeMounts:
        - name: temp-storage
          mountPath: /data
  volumes:
    - name: temp-storage
      emptyDir: {}
```

Aplica el manifiesto:

```sh
kubectl apply -f pod-emptydir.yaml
```

Verifica el Pod y explora el volumen dentro del contenedor:

```sh
kubectl exec -it pod-emptydir -- sh
ls /data
```

El volumen `emptyDir` existe mientras el Pod esté corriendo.

Si creamos un archivo dentro de `/data`, este persistirá mientras el Pod esté activo. Si el Pod se elimina, el contenido del volumen también se perderá.
Para probar esto, crea un archivo dentro del volumen:

```sh
echo "Hola, mundo!" > /data/archivo.txt
```
Luego, verifica que el archivo se creó correctamente:

```sh
cat /data/archivo.txt
```
Si todo ha ido bien, deberías ver el contenido del archivo que creaste.
Finalmente, elimina el Pod para ver que el volumen `emptyDir` se borra junto con él:

```sh
kubectl delete pod pod-emptydir
```
```sh
kubectl get pods
```
Si intentas acceder a los datos del Pod eliminado, verás que ya no existe, y con él, el volumen `emptyDir` también se ha eliminado.
