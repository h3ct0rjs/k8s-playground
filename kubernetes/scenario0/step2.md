# Practicando con kubectl
En este paso 🧑‍💻, profundizaremos en algunos conceptos y comandos adicionales que son esenciales para trabajar con Kubernetes.

## Crear un nuevo namespace 📂
Los namespaces son una forma de dividir los recursos 📂 dentro de un clúster de Kubernetes.
Siempre se recomienda utilizar un nuevo namespace para aislar los recursos de otros
equipos, aplicaciones y entornos, utiliza el siguiente comando:
```bash
kubectl create namespace <nombre-del-namespace>
```

➡️ Podemos obtener la lista de namespaces existentes con el siguiente comando:

```bash
kubectl get namespaces
```{{exec}}


➡️ Crea un namespace llamado `dev-app`:
```bash
kubectl create namespace dev-app
```{{exec}}

## Usar un namespace específico
Para trabajar dentro de un namespace específico, puedes usar el siguiente comando:

```bash
kubectl config set-context --current --namespace=<nombre-del-namespace>
```

➡️ Si ejecutas el siguiente comando, cambiarás al namespace `dev-app`:

```bash
kubectl config set-context --current --namespace=dev-app
```{{exec}}

Para volver a el namespace por defecto, utiliza:
```bash
kubectl config set-context --current --namespace=default
```{{exec}}

## Listar recursos en un namespace
Para listar todos los recursos dentro de un namespace específico, utiliza el siguiente comando:
```bash
kubectl get all -n <nombre-del-namespace>
```
Los namespaces son tambien usados por kubernetes para organizar los recursos y evitar conflictos de nombres entre diferentes equipos o aplicaciones. Por defecto los componentes del sistema se despliegan en el namespace `kube-system` que es donde se encuentran los recursos del sistema de Kubernetes.

➡️ Para listar todos los recursos en el namespace `kube-system`, utiliza:

```bash
kubectl get all -n kube-system
```{{exec}}

➡️ Para listar todos los recursos en el namespace `dev-app`, utiliza:
```bash
kubectl get all -n dev-app
```{{exec}}
