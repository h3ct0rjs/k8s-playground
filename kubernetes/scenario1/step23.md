
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

