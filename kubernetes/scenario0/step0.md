
## 🛠️ KubeCtl Tool

En este escenario, vamos a aprender a usar la herramienta de línea de comandos `kubectl` para interactuar con un clúster de Kubernetes.

`kubectl`(kube control, kubecuttle) es la herramienta de línea de comandos para interactuar con Kubernetes.

Permite hacer todas las operaciones como _**crear, actualizar, eliminar y obtener información**_ sobre los recursos en un clúster de Kubernetes.

![](http://www.techplayon.com/wp-content/uploads/2021/07/Kubectloperations.png)

Cada vez que ejecutas el comando `kubectl`, estás interactuando con una API [REST](https://aws.amazon.com/es/what-is/restful-api/) de Kubernetes. La herramienta `kubectl` create solicitudes HTTP a la API y recibe respuestas en diferentes formatos, lo que te permite gestionar los recursos del clúster.

![](https://raw.githubusercontent.com/sangam14/kubernets101/master/pic8.gif)

 `kubectl` esta desarrollado en el lenguaje de programación [Go](https://go.dev/), y es una herramienta de código abierto que puedes encontrar en [GitHub](https://github.com/kubernetes/kubectl).