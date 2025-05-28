## Patrones de uso en PODS

Los patrones de uso o de diseño en Pods son enfoques comunes para resolver problemas específicos en la arquitectura de aplicaciones en Kubernetes. Estos patrones ayudan a optimizar el uso de recursos, mejorar la escalabilidad y facilitar la gestión de aplicaciones complejas.

### Contenedor Único vs Contenedor Múltiple
En Kubernetes, un Pod puede contener uno o varios contenedores. Los Pods de un solo contenedor son comunes y se utilizan para ejecutar aplicaciones simples. Los Pods de múltiples contenedores se utilizan cuando los contenedores necesitan colaborar estrechamente, compartiendo recursos como almacenamiento y red.


Existen varios patrones de uso en Pods que son ampliamente adoptados en la comunidad de Kubernetes. A continuación te mostraremos se describen algunos de los más comunes:


### Sidecar Pattern
El **Sidecar Pattern** es un patrón de diseño en Kubernetes donde un contenedor adicional (el "sidecar") se ejecuta junto a un contenedor principal dentro del mismo Pod. Este patrón se utiliza para extender las funcionalidades del contenedor principal sin modificar su código.
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

### Adapter Pattern
El **Adapter Pattern** es un patrón de diseño que permite que dos contenedores dentro de un Pod se comuniquen entre sí, adaptando sus interfaces para que puedan trabajar juntos. Este patrón es útil cuando se necesita integrar contenedores que tienen diferentes protocolos o formatos de datos.

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


### Init Containers
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

### Contenedores de Volumen Compartido