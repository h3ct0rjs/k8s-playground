
El comando `kubectl` tiene una estructura básica que se utiliza para interactuar con un clúster de Kubernetes. La sintaxis general es la siguiente:

```bash
kubectl <comando> <recurso> [<nombre>] [flags]
```

Comandos probables podrian ser :
- `get`: para obtener información sobre los recursos.
- `describe`: para obtener detalles sobre un recurso específico.
- `create`: para crear un nuevo recurso.
- `apply`: para aplicar cambios a un recurso.
- `delete`: para eliminar un recurso.
- `exec`: para ejecutar un comando dentro de un Pod.
- `logs`: para ver los logs de un Pod.
- `scale`: para escalar un deployment.
- `rollout`: para gestionar el despliegue de una aplicación.
- `config`: para gestionar la configuración de `kubectl`.
- `run`: para crear un Pod a partir de una imagen de contenedor.
- `expose`: para exponer un recurso a través de un servicio.

como ejemplo, si quieres obtener información sobre el estado de los nodos en el clúster, usarías:

```bash
kubectl get nodes
```{{exec}}

Si deseas obtener información detallada puedes adicionar la opción `-o wide`:

```bash
kubectl get nodes -o wide
```{{exec}}

En los siguientes pasos ejecutaremos algunos de estos comandos para familiarizarnos con el cluster de kubernetes y su entorno de trabajo.

Como ultimo truco desearas usar hacer lo siguiente en el entorno para tener soporte multicolor :
```bash
alias kubectl=kubecolor
alias k=kubecolor
```{{exec}}

ahora puedes usar `k` en lugar de `kubectl` para ejecutar los comandos de Kubernetes con colores y una mejor legibilidad.

```bash
k get nodes -o wide
```{{exec}}