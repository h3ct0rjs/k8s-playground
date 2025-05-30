## Como se ve un Deployment

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
