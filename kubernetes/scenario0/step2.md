# Contenido para el archivo /k8s-killercoda-workshop/k8s-killercoda-workshop/scenario0/step2.md

<!-- filepath: /Users/hjimenez/Developer/Fun/k8s-playground/kubernetes/scenario0/step2.md -->
# Aprendiendo más sobre Kubernetes

En este paso, profundizaremos en algunos conceptos y comandos adicionales que son esenciales para trabajar con Kubernetes.

## 2.1. Crear un nuevo namespace
Los namespaces son una forma de dividir los recursos dentro de un clúster de Kubernetes. Para crear un nuevo namespace, utiliza el siguiente comando:
```bash
kubectl create namespace <nombre-del-namespace>
```

## 2.2. Usar un namespace específico
Para trabajar dentro de un namespace específico, puedes usar el siguiente comando:
```bash
kubectl config set-context --current --namespace=<nombre-del-namespace>
```

## 2.3. Listar recursos en un namespace
Para listar todos los recursos dentro de un namespace específico, utiliza el siguiente comando:
```bash
kubectl get all -n <nombre-del-namespace>
```

## 2.4. Desplegar una aplicación
Para desplegar una aplicación en Kubernetes, puedes usar un archivo de configuración YAML. Aquí hay un ejemplo de cómo desplegar una aplicación simple:
```bash
kubectl apply -f <archivo-de-configuracion>.yaml
```

## 2.5. Escalar un deployment
Para escalar un deployment y cambiar el número de réplicas, utiliza el siguiente comando:
```bash
kubectl scale deployment <nombre-del-deployment> --replicas=<número-de-replicas>
```

## 2.6. Actualizar un deployment
Para actualizar un deployment con una nueva imagen, utiliza el siguiente comando:
```bash
kubectl set image deployment/<nombre-del-deployment> <nombre-del-contenedor>=<nueva-imagen>
```

## 2.7. Eliminar un recurso
Para eliminar un recurso en Kubernetes, utiliza el siguiente comando:
```bash
kubectl delete <tipo-de-recurso> <nombre-del-recurso>
```

## 2.8. Verificar el estado de un deployment
Para verificar el estado de un deployment, utiliza el siguiente comando:
```bash
kubectl rollout status deployment/<nombre-del-deployment>
```

## 2.9. Desplegar una aplicación desde un archivo YAML
Para desplegar una aplicación desde un archivo YAML, utiliza el siguiente comando:
```bash
kubectl apply -f <ruta-al-archivo-yaml>
```

## 2.10. Limpiar recursos
Para eliminar todos los recursos en un namespace específico, utiliza el siguiente comando:
```bash
kubectl delete all --all -n <nombre-del-namespace>
```

Con estos comandos y conceptos, estarás mejor preparado para gestionar y trabajar con aplicaciones en Kubernetes.