## 🚀 Creando tu primer POD

Ahora crearás un Pod usando un manifiesto YAML.
Para ello utilizaremos nginx como ejemplo, un servidor web popular.
que se utiliza comúnmente para servir a millones de usuarios en todo el mundo
sitios web/aplicaciones/contenidos estáticos.


## 1. Crea un archivo llamado `mi-primer-pod.yaml` con el siguiente contenido:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mi-primer-pod
spec:
  containers:
    - name: nginx
      image: nginx
```

## 2. Aplica el manifiesto para crear el POD:

```bash
kubectl apply -f mi-primer-pod.yaml
```
## 3. Verifica que el POD se haya creado correctamente:

```bash
kubectl get pods
```

## 4. Inspecciona el POD para ver sus detalles:

```bash
kubectl describe pod mi-primer-pod
```
## 5. Accede al POD para ver el contenedor en ejecución:

```bash
kubectl exec -it mi-primer-pod -- /bin/bash
```
## 6. Sal del POD:

```bash
exit
```
## 7. Elimina el POD cuando hayas terminado:

```bash
kubectl delete pod mi-primer-pod
```
## Conclusión
Has creado tu primer Pod en Kubernetes. Has aprendido a definir un Pod usando un manifiesto YAML, a aplicarlo y a inspeccionar su estado. Los Pods son fundamentales para entender cómo se despliegan y gestionan las aplicaciones en Kubernetes.


## Recursos adicionales
- [Documentación oficial de Kubernetes sobre Pods](https://kubernetes.io/docs/concepts/workloads/pods/)