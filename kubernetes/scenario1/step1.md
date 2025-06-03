# 🟢 ¿Qué es un POD 📦?

Un **Pod** es la unidad más pequeña desplegable en Kubernetes.
Un Pod puede contener **uno** o **varios** contenedores que comparten :
- almacenamiento
- red
- especificaciones sobre cómo ejecutar los contenedores.

Generalmente, un POD contiene un solo contenedor, pero puede contener múltiples contenedores que están estrechamente relacionados y necesitan compartir recursos.
Un POD se ejecuta en un nodo del clúster de Kubernetes y es gestionado por el **controlador de PODs**. Los PODs son efímeros, lo que significa que pueden ser creados y destruidos según sea necesario.

![PODs](https://kubernetes.io/images/docs/POD.svg)

## ℹ️ Por qué es importante
Los Pods son importantes porque proporcionan un entorno de ejecución para los contenedores, gestionando aspectos como la red, el almacenamiento y la configuración. Al utilizar Pods, Kubernetes puede garantizar que los contenedores que necesitan trabajar juntos se ejecuten en el mismo contexto, facilitando la comunicación y la gestión de recursos.

Kubernetes gestiona el ciclo de vida de los Pods y sus contenedores, lo que significa que un Pod puede pasar por diferentes estados a medida que se crea, ejecuta y finaliza. Estos estados son importantes para entender cómo se comportan los Pods en el clúster.

Hay un compoenente llamado **Kubelet** que se encarga de gestionar los Pods en cada nodo del clúster. El **Kubelet** se comunica con el servidor de la API de Kubernetes para informar sobre el estado de los Pods y recibir instrucciones sobre cómo gestionarlos.

Tareas de Kubetlet incluyen:
- Monitorear el estado de los Pods y sus contenedores.
- Iniciar, detener y reiniciar contenedores según sea necesario.
- Coordinar la asignación de recursos entre los contenedores en un Pod.
- Contactar el CRI (Container Runtime Interface) para gestionar los contenedores.

Tengamos presente la arquitectura de Kubernetes, que se compone de varios componentes clave, incluyendo el servidor de la API, el controlador de Pods y el Kubelet. Estos componentes trabajan juntos para gestionar los Pods y sus contenedores en todo el clúster.

![](https://vergaracarmona.es/wp-content/uploads/2023/09/arquitectura-Kubernetes.webp)

