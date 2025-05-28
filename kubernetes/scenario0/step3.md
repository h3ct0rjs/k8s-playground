# Desplegando tu Primer Pod
Ahora que tienes tu clúster de ⚓️ Kubernetes en funcionamiento, es hora de desplegar tu primer 📦Pod. Un Pod es la unidad más pequeña que puedes desplegar y gestionar en Kubernetes, profundizaremos mas en el siguiente escenario acerca de este recurso.

Por el momento 🚀desplegaremos un Pod simple para familizarnos con `kubectl` .

## Desplegar un Pod
Para desplegar un Pod, siempre usarás el siguiente comando:

```bash
kubectl run <nombre-del-pod> --image=<imagen-del-contenedor>
```

➡️ Como ejemplo desplegaremos un Pod llamado `hello-pereira` con la imagen de [Nginx](https://hub.docker.com/_/nginx):

```bash
kubectl run hello-pereira --image=nginx
```{{exec}}

## Verificar el estado del Pod
Para verificar el estado del Pod que acabas de desplegar, utiliza el siguiente comando:
```bash
kubectl get pods
```{{exec}}

**Nota** ℹ️:  El Status del contenedor, si es `Running` significa que el Pod se
ha desplegado correctamente y está en funcionamiento. Si tiene un estado diferente,
como `Pending` o `CrashLoopBackOff`, significa que hay un problema con el Pod.

ℹ️: Recuerda que puedes usar el flag `-o wide` para obtener más información sobre el 📦Pod,
como la **IP** y el **nodo** en el que se está ejecutando:

```bash
kubectl get pods -o wide
```{{exec}}

➡️ También puedes usar el flag `--watch` para observar los cambios en tiempo real:
```bash
kubectl get pods --watch
```{{exec}}

Puedes detener la observación presionando `Ctrl + C`.


➡️ Si quisiera deplegar un pod de python/mysql o algo similar, podrías usar el siguiente comando:

```bash
kubectl run mi-mysql --image=mysql
```{{exec}}

Esto desplegará un Pod llamado `mi-mysql` con la imagen de [MySQL](https://hub.docker.com/_/mysql).

recuerda revisar el estado del Pod con:
```bash
kubectl get pods mi-mysql
```{{exec}}

## 🧑‍🚒 Obteniendo más información del Pod
Ahora que has desplegado tu Pod, es importante asegurarte de que todo esté funcionando correctamente. A veces, los Pods pueden fallar por diversas razones, como problemas de configuración o errores en la imagen del contenedor.

😩 O no!!,  pero mira el pod esta fallando 🚨, necesitamos obtener mas información de este
Pod para entender qué está pasando. Para ello, puedes usar el comando

`kubectl describe pod <nombre-del-pod>` :

➡️  Si ejecutas lo siguiente:

```bash
kubectl describe pod mi-mysql
```{{exec}}

Esto te proporcionará información detallada sobre el Pod, incluyendo eventos recientes, condiciones y errores que puedan haber ocurrido durante su despliegue.

## Acceder al Pod
Para acceder al Pod y ver los logs, puedes usar el siguiente comando:

```bash
kubectl logs <nombre-del-pod>
```

➡️  Si ejecutas lo siguiente:
```bash
kubectl logs mi-mysql
```{{exec}}

Esto te mostrará los logs del Pod, lo que puede ayudarte a identificar problemas específicos con la aplicación que se está ejecutando en el Pod.

## Eliminar un Pod
Si deseas eliminar el Pod que has desplegado, puedes usar el siguiente comando:

```bash
kubectl delete pod <nombre-del-pod>
```
➡️ Si ejecutas lo siguiente:

```bash
kubectl delete pod mi-mysql
```{{exec}}

Esto eliminará el Pod `mi-mysql` del clúster de Kubernetes.
