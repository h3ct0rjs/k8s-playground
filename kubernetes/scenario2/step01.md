# 🚀 Deployments y ReplicaSet en Kubernetes

En Kubernetes, como lo mencionamos anteriormente, un **Deployment** es un recurso que te permite gestionar el ciclo de vida de tus aplicaciones de manera declarativa. Con un **Deployment** puedes crear, actualizar, escalar y eliminar 📦aplicaciones fácilmente.

Para entender mejor los Deployments, es importante conocer el concepto de **ReplicaSet**.

## ¿Qué es un ReplicaSet?

Un **ReplicaSet** es un recurso encargado de asegurar que un número específico de réplicas de un 📦POD estén corriendo en todo momento. Cuando creas un Deployment, este automáticamente crea y gestiona un **ReplicaSet** por ti.

- Si el 📦POD falla, el ReplicaSet lo _reemplazará_.
- Si escalas el Deployment, el ReplicaSet ajusta la cantidad de PODs.

![](https://miro.medium.com/v2/resize:fit:1400/1*lH0EI3FRPNVI5wsxgtx9IQ.png)

La relacion entre estos es que un **Deployment** crea un **ReplicaSet**, y este a su vez se encarga de gestionar los Pods.

Observa la siguiente imagen que ilustra esta relación:

![](https://lh3.googleusercontent.com/proxy/h2zD_NZ2CpFrhBjZFpmRwpt3_uOILj6btfBD_HerPaQ1vYHeP6_3enwG4i2igcW9TbvxTUkVc5jq0fKPUYjHeOYUV34wVTU1IEF1lLRELbATG75tLZt9)

## ¿Por qué usar Deployments?

- Permiten actualizaciones seguras (rolling updates).
- Facilitan el rollback a versiones anteriores.
- Gestionan automáticamente los ReplicaSets y PODs.
