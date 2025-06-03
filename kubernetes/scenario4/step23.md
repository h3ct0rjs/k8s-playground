## Crear un Pod con Persistent Volume Claim (PVC)
Ahora, vamos a crear un Pod que use el PVC para almacenar datos de forma persistente.
Crea un archivo `pod-pvc.yaml` con el siguiente contenido:

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
```{{copy}}
Aplica el manifiesto:

```bash
kubectl apply -f pod-pvc.yaml
```{{exec}}
Verifica que el Pod se ha creado correctamente:

```bash
kubectl get pods
```{{exec}}
Ahora, puedes acceder al Pod y verificar que el volumen está montado correctamente:

```sh
kubectl exec -it pod-con-pvc -- sh
ls /data
```
Puedes crear archivos dentro del volumen montado y verificar que persisten incluso si el Pod se elimina y se recrea.
Puedes crear un archivo dentro del volumen montado:

```sh
echo "Hola, mundo!" > /data/archivo.txt
```
Luego, verifica que el archivo se creó correctamente:

```sh
cat /data/archivo.txt
```
Si todo ha ido bien, deberías ver el contenido del archivo que creaste.
Finalmente, elimina el Pod para ver que el volumen PVC persiste:

```sh
kubectl delete pod pod-con-pvc
```
Verifica que el PVC sigue existiendo:

```sh
kubectl get pvc
```
El PVC seguirá existiendo y podrás reutilizarlo en otros Pods, lo que demuestra que el almacenamiento es persistente más allá del ciclo de vida del Pod.

Si montamos otro Pod acontinuacion y montamos el mismo PVC, podremos acceder a los datos que creamos anteriormente:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-pvc-2
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
    ```{{copy}}
