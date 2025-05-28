## Verificar la versión de Kubernetes
Es importante notar que este entorno utiliza la ultima version de Kubernetes `1.32`,
por lo que algunos comandos pueden variar ligeramente en comparación con versiones anteriores.

Para verificar la versión de Kubernetes, utiliza el comando `kubectl version`. Este comando te mostrará la versión del cliente y del servidor de Kubernetes.
```bash
kubectl version
```{{exec}}

podemos utilizar la opción `--output json` para obtener la versión en formato JSON, lo que puede ser útil para integraciones o scripts.:
```bash
kubectl version --output json
```{{exec}}

## Verificar el estado del clúster
Para verificar el estado del clúster, utiliza el comando `kubectl cluster-info`.
Este comando te mostrará información sobre el clúster y los nodos que lo componen.
```bash
kubectl cluster-info
```{{exec}}

## Verificar los nodos del clúster
Para verificar los nodos del clúster, utiliza el comando `kubectl get nodes`.
Este comando te mostrará una lista de todos los nodos en el clúster y su estado.
```bash
kubectl get nodes -o wide
```{{exec}}

## Verificar los pods del clúster
Para verificar los pods del clúster, utiliza el comando `kubectl get pods`.
Este comando te mostrará una lista de todos los pods en el clúster y su estado.
```bash
kubectl get pods --all-namespaces
```{{exec}}

## Verificar los servicios del clúster
Para verificar los servicios del clúster, utiliza el comando `kubectl get services`.
Este comando te mostrará una lista de todos los servicios en el clúster y su estado.
```bash
kubectl get services
```{{exec}}

## Verificar los deployments del clúster
Para verificar los deployments del clúster, utiliza el comando `kubectl get deployments`.
Este comando te mostrará una lista de todos los deployments en el clúster y su estado.
```bash
kubectl get deployments
```{{exec}}

## Verificar los namespaces del clúster
Los namespaces son una forma de dividir los recursos 📂 dentro de un clúster de Kubernetes,
permitiendo una mejor organización y gestión de los recursos.

es la manera nativa de aislar🗂️ recursos en un clúster de Kubernetes, permitiendo
que diferentes equipos o aplicaciones compartan el mismo clúster sin interferir entre sí.

Para verificar los namespaces del clúster, utiliza el comando `kubectl get namespaces`.
 Este comando te mostrará una lista de todos los namespaces en el clúster y su estado.
```bash
kubectl get namespaces
```{{exec}}

Es posible que quieras revisar todos los namespaces , puedes utilizar el comando `kubectl get all --all-namespaces`.
Este comando te mostrará una lista de todos los recursos en todos los namespaces del clúster.
```bash
kubectl get all --all-namespaces
```{{exec}}


## Verificar la configuración del contexto actual
Para verificar la configuración del contexto actual, utiliza el comando `kubectl config current-context`. Este comando te mostrará el contexto actual del clúster.
```bash
kubectl config current-context
```{{exec}}

## Verificar la configuración del contexto
Para verificar la configuración del contexto, utiliza el comando `kubectl config get-contexts`. Este comando te mostrará una lista de todos los contextos disponibles en el clúster.
```bash
kubectl config get-contexts
```{{exec}}

## Verificar la configuración del contexto
Para verificar la configuración del contexto, utiliza el comando `kubectl config view`. Este comando te mostrará la configuración actual del clúster y los contextos disponibles.
```bash
kubectl config view
```{{exec}}

