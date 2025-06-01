## Paso 1: Usar un volumen simple (emptyDir)

Vamos a crear un pod que use un volumen temporal de tipo `emptyDir`.

Crea un archivo llamado `pod-emptydir.yaml` con el siguiente contenido:

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

Verifica el pod y explora el volumen dentro del contenedor:

```sh
kubectl exec -it pod-emptydir -- sh
ls /data
```

El volumen `emptyDir` existe mientras el pod esté corriendo.