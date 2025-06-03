## Patrones de uso en 📦Pods
Aprendamos un poco más sobre los patrones de uso en 📦Pods en Kubernetes.

Los patrones de uso o de diseño en el contexto de los  📦Pods, microservicios,
son enfoques comunes para resolver problemas específicos en la arquitectura de
aplicaciones en Kubernetes.

Estos patrones ayudan a optimizar el uso de recursos, mejorar la escalabilidad y
facilitar la gestión de aplicaciones complejas.

### 🐳Contenedor Único vs 🐳🐳Contenedores Múltiples

Una inquietud común al trabajar con Kubernetes es cómo estructurar los 📦Pods.

En Kubernetes, un 📦Pod puede contener **uno** o **varios** contenedores. Los 📦Pods de un solo contenedor son comunes y se utilizan para ejecutar aplicaciones simples, son el estándar.

Los 📦Pods de múltiples🐳🐳 contenedores se utilizan cuando los contenedores necesitan colaborar estrechamente, compartiendo recursos como almacenamiento y red.

Existen varios patrones de uso de los 📦Pods que son ampliamente adoptados en la comunidad de Kubernetes.

A continuación te mostraremos algunos de los más comunes:


### ⚙️Sidecar Pattern
El **Sidecar Pattern** es un patrón de diseño en Kubernetes donde un contenedor adicional (el `sidecar`) se ejecuta junto a un contenedor principal dentro del mismo 📦Pod. Este patrón se utiliza para extender las funcionalidades del contenedor principal sin modificar su código.

![](https://i0.wp.com/lab.wallarm.com/wp-content/uploads/2024/12/89.3.jpg)

### Ejemplo de Sidecar Pattern

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-sidecar
spec:
  containers:
    - name: contenedor-principal
      image: nginx
    - name: sidecar
      image: busybox
      command: ["sh", "-c", "while true; do echo 'Sidecar is running'; sleep 10; done"]
```

### ⚙️Adapter Pattern

El **Adapter Pattern** es un patrón de diseño que permite que dos contenedores dentro de un 📦Pod se comuniquen entre sí, adaptando sus interfaces para que puedan trabajar juntos. Este patrón es útil cuando se necesita integrar contenedores que tienen diferentes protocolos o formatos de datos.

![](https://i0.wp.com/lab.wallarm.com/wp-content/uploads/2024/12/89.2-min.jpg?w=770&ssl=1)

### Ejemplo de Adapter Pattern
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-adapter
spec:
    containers:
        - name: contenedor-principal
        image: nginx
        - name: adapter
        image: busybox
        command: ["sh", "-c", "while true; do echo 'Adapter is running'; sleep 10; done"]
```

### ⚙️Init Containers
Los **Init Containers** son contenedores que se ejecutan antes de los contenedores principales en un Pod. Se utilizan para realizar tareas de configuración o preparación necesarias antes de que los contenedores principales se inicien.

### Ejemplo de Init Containers

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-init-container
spec:
  initContainers:
    - name: init-container
      image: busybox
      command: ["sh", "-c", "echo 'Init container running'; sleep 5"]
  containers:
    - name: contenedor-principal
      image: nginx
```

### ⚙️Contenedores de Volumen Compartido
Los **Contenedores de Volumen Compartido** son un patrón donde varios contenedores dentro de un 📦Pod comparten un volumen persistente. Esto permite que los contenedores accedan a los mismos datos y archivos, facilitando la colaboración entre ellos.
### Ejemplo de Contenedores de Volumen Compartido
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-con-volumen-compartido
spec:
  containers:
    - name: contenedor-principal
      image: nginx
      volumeMounts:
        - name: shared-volume
          mountPath: /usr/share/nginx/html
    - name: sidecar
      image: busybox
      command: ["sh", "-c", "while true; do echo 'Sidecar is writing'; echo 'Hello from Sidecar' > /usr/share/nginx/html/index.html; sleep 10; done"]
      volumeMounts:
        - name: shared-volume
          mountPath: /usr/share/nginx/html
  volumes:
    - name: shared-volume
      emptyDir: {}
```
### Conclusión

Estos patrones de uso con los Pods son fundamentales para diseñar aplicaciones eficientes y escalables en Kubernetes. Al comprender y aplicar estos patrones, puedes mejorar la arquitectura de tus aplicaciones, optimizar el uso de recursos y facilitar la gestión de contenedores en un entorno de producción. Cada patrón tiene su propio caso de uso y puede ser combinado con otros para crear soluciones más complejas y efectivas.
