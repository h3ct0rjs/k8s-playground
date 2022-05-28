# Contenido para el archivo /k8s-killercoda-workshop/k8s-killercoda-workshop/scenario0/step3.md

````markdown
<!-- filepath: /Users/hjimenez/Developer/Fun/k8s-playground/kubernetes/scenario0/step3.md -->
# Profundizando en Kubernetes

En este paso, exploraremos conceptos más avanzados y comandos útiles en Kubernetes que te ayudarán a gestionar tu clúster de manera más efectiva.

## 3.1. Crear un nuevo namespace
Los namespaces son una forma de dividir los recursos en un clúster. Para crear un nuevo namespace, utiliza el siguiente comando:
```bash
kubectl create namespace <nombre-del-namespace>
```

## 3.2. Desplegar una aplicación
Para desplegar una aplicación en Kubernetes, puedes usar un archivo de configuración YAML. Aquí hay un ejemplo de cómo desplegar una aplicación simple:
```bash
kubectl apply -f <archivo-de-configuracion>.yaml
```

## 3.3. Escalar un deployment
Para escalar un deployment existente, utiliza el siguiente comando:
```bash
kubectl scale deployment <nombre-del-deployment> --replicas=<número-de-replicas>
```

## 3.4. Actualizar un deployment
Para actualizar una imagen en un deployment, puedes usar el siguiente comando:
```bash
kubectl set image deployment/<nombre-del-deployment> <nombre-del-contenedor>=<nueva-imagen>
```

## 3.5. Eliminar un recurso
Para eliminar un recurso, como un pod o un deployment, utiliza el siguiente comando:
```bash
kubectl delete <tipo-de-recurso> <nombre-del-recurso>
```

## 3.6. Verificar el estado de un deployment
Para verificar el estado de un deployment, utiliza el siguiente comando:
```bash
kubectl rollout status deployment/<nombre-del-deployment>
```

## 3.7. Obtener información detallada sobre un pod
Para obtener información detallada sobre un pod específico, utiliza el siguiente comando:
```bash
kubectl describe pod <nombre-del-pod>
```

## 3.8. Configurar recursos de límite
Para establecer límites de recursos en un pod, puedes incluir la siguiente sección en tu archivo de configuración YAML:
```yaml
resources:
  limits:
    memory: "512Mi"
    cpu: "500m"
```

## 3.9. Realizar un rollback
Si necesitas revertir un deployment a una versión anterior, puedes usar el siguiente comando:
```bash
kubectl rollout undo deployment/<nombre-del-deployment>
```

## 3.10. Limpiar recursos no utilizados
Para eliminar recursos que ya no se utilizan, puedes usar el siguiente comando:
```bash
kubectl delete all --all -n <nombre-del-namespace>
```
````