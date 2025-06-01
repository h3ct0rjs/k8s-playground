## Paso 3: Montar un PVC en un pod

Ahora, monta el PVC en un pod para que la aplicación pueda usar almacenamiento persistente.

Crea un archivo `pod-pvc.yaml`:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-pvc
spec:
  containers:
    - name: app
      image: busybox
      command: ["sleep", "3600"]
      volumeMounts:
        - name: storage
          mountPath: /data
  volumes:
    - name: storage
      persistentVolumeClaim:
        claimName: pvc-ejemplo
```

Aplica el manifiesto:

```sh
kubectl apply -f pod-pvc.yaml
```

Verifica que el pod puede escribir y leer datos en `/data`, y que los datos persisten aunque el pod se elimine y recree.