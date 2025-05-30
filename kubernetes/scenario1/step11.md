## Estados de un 📦 POD

Los estados de un Pod pueden variar segun la siguiente imagen :

![](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*tgMDxbLM6z8ayeC0J0XtSQ.png)

- `Pending` : El Pod está siendo creado, pero aún no se ha asignado a un nodo.
- `Running` : El Pod está en ejecución y al menos uno de sus contenedores está activo.
- `Succeeded` : Todos los contenedores del Pod han terminado su ejecución con éxito.
- `Failed` : Al menos un contenedor del Pod ha fallado y no se ha reiniciado.
- `Unknown` : El estado del Pod no se puede determinar, generalmente debido a problemas de comunicación con el nodo.
- `CrashLoopBackOff` : El contenedor del Pod ha fallado repetidamente y Kubernetes está intentando reiniciarlo.


Como un ejemplo :

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*5TdZqzM5JkEI8UgkxBY0SQ.png)

➡️ Puedes obtener mas informacion de los pods que estan en ejecucion con el siguiente comando:

```bash
kubectl get pods --all-namespaces
```{{exec}}

Puedes 🧐 observar que generalmente hay pods para :
- Core-DNS
- Kube-proxy
- Kube-scheduler
- Kube-controller-manager
- Kube-apiserver
- Etcd
Estos son componentes esenciales del clúster de Kubernetes que ayudan a gestionar y coordinar los Pods y otros recursos.

Nota que usan el namespace `kube-system`, que es un espacio de nombres reservado para los componentes del sistema de Kubernetes.

