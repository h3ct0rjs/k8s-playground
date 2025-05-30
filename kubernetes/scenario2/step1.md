# Que es un ⚙️Deployment

Un deployment incluye todas las actividades necesarias para instalar, configurar,
actualizar y publicar una nueva versión de software, asegurando que funcione
correctamente en el entorno destino.

# ⚙️ Deployment en Kubernetes

Un **Deployment** en Kubernetes es un recurso que permite gestionar el ciclo de
vida de los Pods, asegurando que el número deseado de **réplicas** de un Pod
esté en ejecución en todo momento.

Los deployments son útiles para implementar actualizaciones, revertir cambios y
escalar aplicaciones de manera eficiente.

Un deployment te permite definir el estado deseado de tu aplicación, y Kubernetes
se encarga de mantener ese estado a lo largo del tiempo.


## 🔵 ¿Qué hace un Deployment?

- Crea Pods automáticamente a través de un ReplicaSet.
- Escala el número de réplicas (hacia arriba o hacia abajo).
- Hace actualizaciones controladas (rolling updates).
- Restaura el estado anterior si algo sale mal (rollbacks).
- Supervisa la salud de los Pods durante su ciclo de vida.

