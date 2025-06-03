## Como se ve📝 un Deployment en `YAML`

Un Deployment en Kubernetes se define mediante un 📄manifiesto en formato `YAML` tambien.

Aquí tienes un ejemplo básico de cómo se ve nuestro **Deployment**:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mi-primer-deploy
spec:
    replicas: 3
    selector:
        matchLabels:
        app: nginx
    template:
        metadata:
        labels:
            app: nginx
        spec:
        containers:
        - name: nginx
            image: nginx:1.25.2
            ports:
            - containerPort: 80
```
Si quieres obtener mas detalles :

```bash
kubectl describe deployment mi-primer-deploy
```{{exec}}

Recuerda que puedes obtener el detalle con colores para una mejor visualización:

```bash
kubecolor describe deployment mi-primer-deploy
```{{exec}}
