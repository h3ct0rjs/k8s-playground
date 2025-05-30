## 🚀 Creando tu segundo 📦POD

Ahora crearás un POD usando un manifiesto YAML.
Para ello utilizaremos nginx como ejemplo, un servidor web popular.
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


## 🧑‍💻 Crea un archivo llamado `mi-primer-pod.yaml` con el siguiente contenido:

Puede utilizar el editor disponible en el entorno clickeando en el tab **"Editor"**

```yaml
apiVersion: v1
kind: POD
metadata:
  name: mi-primer-pod
spec:
  containers:
    - name: nginx
      image: nginx
      ports:
        - containerPort: 80
```{{copy}}

Este archivo `YAML` o manifiesto define un POD llamado `mi-primer-POD` que ejecuta un contenedor con la imagen de `nginx`.
todos los manifiestos de Kubernetes siguen una estructura similar, donde se especifica la `versión` de la API,
el tipo de recurso (en este caso, un POD), los metadatos y la especificación del contenedor.


##  Aplica el manifiesto para crear el POD:

➡️ Utiliza `kubectl` para aplicar/desplegar el POD definido en el archivo `mi-primer-pod.yaml`.

```bash
kubectl apply -f mi-primer-pod.yaml
```{{exec}}


## Verifica que el 📦POD se haya creado correctamente:

```bash
kubectl get pods -w
```{{exec}}


## Inspecciona el POD para ver sus detalles:

```bash
kubectl describe pod mi-primer-pod
```{{exec}}


## Accede al POD para ver el contenedor en ejecución:
```bash
kubectl exec -it mi-primer-pod -- /bin/bash
```{{exec}}

➡️ Este comando te permite acceder al contenedor en el POD y ejecutar comandos dentro de él.
observa 🧐 que este contenedor esta basado en algun sistema operativo :

```bash
cat /etc/os-release
```{{exec}}

## Sal del POD:

```bash
exit
```{{exec}}

## Elimina el POD cuando hayas terminado:

```bash
kubectl delete POD mi-primer-pod
```{{exec}}

## Conclusión
¡Felicidades! 🎉
Has creado tu primer POD en Kubernetes. Has aprendido a definir un POD usando un manifiesto YAML, a aplicarlo y a inspeccionar su estado. Los PODs son fundamentales para entender cómo se despliegan y gestionan las aplicaciones en Kubernetes.

👉 Recuerda parte de los fundamentos de Kubernetes, y dominar los PODs te ayudará a construir aplicaciones más complejas, solidas en el futuro.


