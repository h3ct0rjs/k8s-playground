# Servicios en Kubernetes

En Kubernetes, un **Servicio** es un recurso que permite exponer una aplicación que se ejecuta en un conjunto de Pods, proporcionando una forma estable de acceder a ellos, incluso si los Pods cambian o se reinician.

## ¿Por qué son importantes los Servicios?
- Permiten la comunicación entre diferentes partes de una aplicación (por ejemplo, frontend y backend).
- Exponen aplicaciones al mundo exterior (Internet) o dentro del clúster.
- Proveen balanceo de carga y descubrimiento de servicios.

## Tipos de Services principales
- **ClusterIP**: Accesible solo dentro del clúster.
- **NodePort**: Expone el servicio en un puerto de cada nodo del clúster.
- **LoadBalancer**: Proporciona una IP externa usando un balanceador de carga (en la nube).

En este escenario, aprenderás a crear y utilizar algunos de estos servicios para exponer tus aplicaciones en Kubernetes.

![](https://www.giitic.com/img/reportes.png?pfdrid_c=true)
