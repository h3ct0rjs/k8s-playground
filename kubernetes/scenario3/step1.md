# Servicios en Kubernetes

Un **Servicio** en Kubernetes es un recurso que define una política de acceso a
un conjunto de Pods, permitiendo la comunicación entre ellos y con el mundo
exterior. Los servicios son fundamentales para exponer aplicaciones y
garantizar que los Pods puedan comunicarse entre sí de manera confiable.

## Tipos de Servicios
Kubernetes ofrece varios tipos de **Servicios**, cada uno con un propósito específico:

- **ClusterIP:** Permite exponer el servicio dentro del clúster, permitiendo que los Pods se comuniquen entre sí a nivel interno. Este es el tipo de servicio por defecto.

- **NodePort:** Permite exponer el servicio en un puerto específico de cada nodo del clúster, permitiendo el acceso externo al servicio a través de la IP del nodo y el puerto asignado. e.g http://<node-ip>:<node-port>.

- **LoadBalancer:** Permite crear un balanceador de carga externo que distribuye el tráfico entre los Pods hacia un servicio, proporcionando una IP externa para acceder al servicio. Este tipo de servicio es común en entornos de nube.

- **Headless Service:** Permite acceder a los Pods directamente sin un balanceador de carga, útil para aplicaciones que requieren una conexión directa a los Pods.