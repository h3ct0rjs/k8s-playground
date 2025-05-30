# Introducción a los Servicios en Kubernetes


# Servicios en Kubernetes

Un **Servicio** en Kubernetes es un recurso que define una política de acceso a
un conjunto de Pods, permitiendo la comunicación entre ellos y con el mundo
exterior. Los servicios son fundamentales para exponer aplicaciones y
garantizar que los Pods puedan comunicarse entre sí de manera confiable.

## Tipos de Servicios
Kubernetes ofrece varios tipos de servicios, cada uno con un propósito específico:
- **ClusterIP:** Exponiendo el servicio dentro del clúster, permitiendo que los Pods se comuniquen entre sí.

- **NodePort:** Exponiendo el servicio en un puerto específico de cada nodo del clúster, permitiendo el acceso externo.

- **LoadBalancer:** Creando un balanceador de carga externo que distribuye el tráfico entre los Pods.

- **ExternalName:** Permitiendo que un servicio se resuelva a un nombre DNS externo.

