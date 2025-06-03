## Como se ve un Servicio ClusterIP en `YAML`

```yaml
apiVersion: v1
kind: Deployment
metadata:
  name: mi-aplicacion
spec:
  replicas: 3
  selector:
    matchLabels:
      app: mi-aplicacion
  template:
    metadata:
      labels:
        app: mi-aplicacion
    spec:
      containers:
        - name: mi-contenedor
          image: nginx:latest
          ports:
            - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: mi-servicio-clusterip
spec:
  type: ClusterIP
  selector:
    app: mi-aplicacion
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
```

