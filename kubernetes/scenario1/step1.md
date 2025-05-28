# 🟢 ¿Qué es un POD 📦?

Un **Pod** es la unidad más pequeña desplegable en Kubernetes.
Un Pod puede contener **uno** o **varios** contenedores que comparten :
- almacenamiento
- red
- especificaciones sobre cómo ejecutar los contenedores.

Generalmente, un Pod contiene un solo contenedor, pero puede contener múltiples contenedores que están estrechamente relacionados y necesitan compartir recursos.
Un Pod se ejecuta en un nodo del clúster de Kubernetes y es gestionado por el **controlador de Pods**. Los Pods son efímeros, lo que significa que pueden ser creados y destruidos según sea necesario.

![Pods](https://kubernetes.io/images/docs/pod.svg)

## ℹ️ Por qué es importante
Los Pods son importantes porque proporcionan un entorno de ejecución para los contenedores, gestionando aspectos como la red, el almacenamiento y la configuración. Al utilizar Pods, Kubernetes puede garantizar que los contenedores que necesitan trabajar juntos se ejecuten en el mismo contexto, facilitando la comunicación y la gestión de recursos.

## Estados de un POD
Los estados de un Pod pueden variar segun la siguiente imagen :

![](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*tgMDxbLM6z8ayeC0J0XtSQ.png)

Como un ejemplo :

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*5TdZqzM5JkEI8UgkxBY0SQ.png)