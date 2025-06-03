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

# Definicion de Recursos Memoria y CPU

**Siempre** es necesario definir los recursos que un contenedor puede utilizar en términos de memoria y CPU.
Si no se definen, Kubernetes asignará recursos predeterminados, lo que puede llevar a problemas de rendimiento o fallos en la aplicación.
e incluso puede generar una inestabilidad en el clúster si un contenedor consume demasiados recursos.

Para ello Kubernetes permite definir los recursos de memoria y CPU que un contenedor puede utilizar.

En Kubernetes, puedes definir los recursos de memoria y CPU para un contenedor utilizando las propiedades `resources.requests` y `resources.limits` en el 📄manifiesto del Pod. Esto nos permite especificar la cantidad mínima y máxima de recursos que un contenedor puede utilizar.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-recursos
spec:
  containers:
    - name: mi-aplicacion
      image: nginx:latest
      ports:
        - containerPort: 80
      resources:
        requests:
          memory: "64Mi"
          cpu: "250m"
        limits:
          memory: "128Mi"
          cpu: "500m"
```{{copy}}
En este ejemplo, se definen los recursos de memoria y CPU para el contenedor `mi-aplicacion`:

- **Requests**: El contenedor solicita 64 MiB de memoria y 250 milicores (0.25 cores) de CPU como mínimo.
- **Limits**: El contenedor puede utilizar hasta 128 MiB de memoria y 500 milicores (0.5 cores) de CPU como máximo.


La diferencia entre `requests` y `limits` es la siguiente:
- **Requests**: Especifica la cantidad mínima de recursos que el contenedor necesita
para funcionar correctamente. Kubernetes garantiza que esta cantidad de recursos
estará disponible para el contenedor en los diferentes nodos del clúster.
Si el contenedor no puede obtener al menos esta cantidad de recursos, no se programará en ningún nodo.

- **Limits**: Especifica la cantidad máxima de recursos que el contenedor puede utilizar.
Si el contenedor intenta utilizar más recursos de los especificados en los límites,
Kubernetes lo restringirá para evitar que consuma más recursos de los permitidos.


