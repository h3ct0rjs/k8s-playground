## PersistentVolume y PersistentVolumeClaim

Para gestionar almacenamiento persistente, Kubernetes utiliza los recursos **PersistentVolume (PV)** y **PersistentVolumeClaim (PVC)**.


Un **PersistentVolume** es un recurso de almacenamiento en el clúster que ha sido provisionado por un administrador o dinámicamente provisionado usando Storage Classes. Un **PersistentVolumeClaim** es una solicitud de almacenamiento hecha por un usuario para utilizar un volumen persistente.

Un **PVC** "reclama" un **PV** disponible, permitiendo que los Pods lo utilicen para almacenar datos de forma persistente.
## Crear un Persistent Volume

➡️ Para ello, creemos un manifiesto `YAML` con nombre `pv.yaml`, con el siguiente contenido:

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
```{{copy}}

Ahora si queremos crear un **PersistentVolumeClaim (PVC)** que use este PV, podemos hacer una reclamación de almacenamiento.
mediante el siguiente archivo `pvc.yaml`:

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
```{{copy}}

Con este manifiesto, estamos solicitando un volumen de 500Mi que se pueden montar en modo de lectura y escritura por un solo nodo.
Del total de 1Gi del PV, el PVC reclamará 500Mi.


## Aplicando ambos manifiestos:

```sh
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
```{{exec}}

Verifica el estado:

```sh
kubectl get pv,pvc
```{{exec}}

El PVC "reclama" espacio del PV disponible.
