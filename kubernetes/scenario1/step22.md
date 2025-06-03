Kubernetes tiene diferentes tipos de verificaciones que se puede realizar con los Pods,
que son esenciales para garantizar que las aplicaciones se ejecuten de manera confiable.

⚠️ Tenemos algunos que se usan de manera continua, lo mencionamos para que estes al tanto
pero no los veremos en este escenario, ya que son más avanzados y se usan en producción,
ellos son :

- **Liveness Probes**: Verifican si un contenedor está vivo y funcionando correctamente.
- **Readiness Probes**: Verifican si un contenedor está listo para recibir tráfico.

# Liveness Probe
En Kubernetes, una **Liveness Probe** es una verificación que se realiza para
determinar si un contenedor está en un estado saludable y funcionando correctamente.

Si la Liveness Probe ⚠️falla, Kubernetes reiniciará el contenedor para intentar restaurar su estado saludable.

Tomemos como ejemplo un contenedor que ejecuta un servidor web como `nginx` :

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-liveness-probe
spec:
  containers:
    - name: nginx
      image: nginx
      ports:
        - containerPort: 80
      livenessProbe:
        httpGet:
          path: /healthz
          port: 80
        initialDelaySeconds: 5
        periodSeconds: 10
        timeoutSeconds: 2
        failureThreshold: 3
```

En este ejemplo, la Liveness Probe realiza una solicitud HTTP GET al endpoint `/healthz` del contenedor `nginx`,
probablemente esto en el laboratorio no funcione porque `nginx` no tiene un endpoint `/healthz` por defecto,
pero en una aplicación real, este endpoint debería devolver un estado HTTP 200 si el contenedor está saludable.

✅ Si la solicitud es exitosa, Kubernetes considerará que el contenedor está saludable y continuará ejecutándolo.

⚠️ Si la solicitud falla, Kubernetes considerará que el contenedor no está saludable y lo reiniciará.

# Readiness Probe
Una **Readiness Probe** es una verificación que se realiza para determinar si un contenedor está listo para recibir tráfico.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-readiness-probe
spec:
  containers:
    - name: mi-aplicacion
      image: mi-aplicacion:latest
      ports:
        - containerPort: 80
      readinessProbe:
        httpGet:
          path: /healthz
          port: 80
        initialDelaySeconds: 5
        periodSeconds: 10
        timeoutSeconds: 2
        failureThreshold: 3
```

Si la Readiness Probe falla, Kubernetes no enviará tráfico al contenedor hasta que esté listo.

Tomemos como ejemplo un contenedor que ejecuta una aplicación web:
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-readiness-probe
spec:
  containers:
    - name: mi-aplicacion
      image: mi-aplicacion:latest
      ports:
        - containerPort: 80
      readinessProbe:
        httpGet:
          path: /
          port: 80
        initialDelaySeconds: 5
        periodSeconds: 10
        timeoutSeconds: 2
        failureThreshold: 3
```

