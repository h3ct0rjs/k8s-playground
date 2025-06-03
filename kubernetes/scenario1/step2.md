## 🚀 Creando tu segundo 📦Pod

Ahora crearás un Pod usando un manifiesto YAML.
Para ello utilizaremos `nginx` como ejemplo, un servidor web popular.
que se utiliza comúnmente para servir a millones de usuarios en todo el mundo
sitios web/aplicaciones/contenidos estáticos.

⚠️ : Recuerdas nuestro truco de color para kubectl?

```bash
alias kubectl=kubecolor
alias k=kubecolor
```{{exec}}

valida que tengas una salida con colores al ejecutar el siguiente comando:

```bash
k get nodes -o wide
```{{exec}}

Otra cosa que puedes hacer es simplemente en vez de usar kubectl usar kubecolor, por ejemplo:

```bash
kubecolor get nodes -o wide
```{{exec}}


## 🧑‍💻 Vamos a jugar :

Crea un archivo llamado `mi-primer-pod.yaml` con el siguiente contenido:

Puedes utilizar el editor disponible en el entorno clickeando en el tab **"Editor"**

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: mi-primer-pod
spec:
  containers:
    - name: nginx
      image: nginx
      ports:
        - containerPort: 80
```{{copy}}

Este archivo `YAML` o 📄 manifiesto define un 📦Pod llamado `mi-primer-pod` que ejecuta un contenedor con la imagen de `nginx`.

Todos los manifiestos de Kubernetes siguen una estructura similar, donde se especifica la `versión` de la API,
el tipo de recurso (en este caso, un **Pod**), los metadatos y la especificación del contenedor.

Si regresas al tab de terminal, puedes ver que el archivo `mi-primer-pod.yaml` ya se encuentra en el directorio actual.

```bash
ls -l mi-primer-pod.yaml
```{{exec}}

##  Apliquemos el manifiesto para crear el Pod:

➡️ Utiliza el comando `kubectl` para aplicar/desplegar el 📦Pod definido en el archivo `mi-primer-pod.yaml`.

```bash
kubectl apply -f mi-primer-pod.yaml
```{{exec}}


## Verifiquemos que el 📦Pod se haya creado correctamente:

Si regresamos al tab de terminal y ejecutamos el siguiente comando, veremos el estado del Pod:

```bash
kubectl get pods -w
```{{exec}}


## Inspecciona el 📦Pod para ver sus detalles:

```bash
kubectl describe pod mi-primer-pod
```{{exec}}


## Accede al 📦Pod para ver el contenedor en ejecución:
```bash
kubectl exec -it mi-primer-pod -- /bin/bash
```{{exec}}

➡️ Este comando te permite acceder al contenedor en el Pod y ejecutar comandos dentro de él.
observa 🧐 que este contenedor esta basado en algun sistema operativo :

```bash
cat /etc/os-release
```{{exec}}

## Sal del 📦Pod:

```bash
exit
```{{exec}}

## Elimina el 📦Pod cuando hayas terminado:

```bash
kubectl delete pod mi-primer-pod
```{{exec}}

## Conclusión
¡Felicidades! 🎉
Has creado tu primer 📦Pod en Kubernetes. Has aprendido a definir un 📦Pod usando un manifiesto YAML, a aplicarlo y a inspeccionar su estado. Los Pods son fundamentales para entender cómo se despliegan y gestionan las aplicaciones en Kubernetes.

👉 Recuerda parte de los fundamentos de Kubernetes, y dominar los 📦Pods te ayudará a construir aplicaciones más complejas, solidas en el futuro.


