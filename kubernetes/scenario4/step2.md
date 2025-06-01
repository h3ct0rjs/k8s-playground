## Paso 2: PersistentVolume y PersistentVolumeClaim

Para almacenamiento persistente, Kubernetes usa los recursos **PersistentVolume (PV)** y **PersistentVolumeClaim (PVC)**.

1. Crea un archivo `pv.yaml`:

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-ejemplo
spec:
  capacity:
    storage: 1Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/mnt/data"
```

2. Crea un archivo `pvc.yaml`:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-ejemplo
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 500Mi
```

3. Aplica ambos manifiestos:

```sh
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
```

Verifica el estado:

```sh
kubectl get pv,pvc
```

El PVC "reclama" espacio del PV disponible.