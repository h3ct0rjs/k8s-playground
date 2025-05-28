# 🟢 ¿Qué es un POD?

Un **Pod** es la unidad más pequeña desplegable en Kubernetes. Un Pod puede contener uno o varios contenedores que comparten almacenamiento, red y especificaciones sobre cómo ejecutar los contenedores.

![Pods](https://kubernetes.io/images/docs/pod.svg)


## Por qué es importante
Los Pods son importantes porque proporcionan un entorno de ejecución para los contenedores, gestionando aspectos como la red, el almacenamiento y la configuración. Al utilizar Pods, Kubernetes puede garantizar que los contenedores que necesitan trabajar juntos se ejecuten en el mismo contexto, facilitando la comunicación y la gestión de recursos.

## Estados de un POD
Los estados de un Pod pueden variar segun la siguiente imagen :

![](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*tgMDxbLM6z8ayeC0J0XtSQ.png)

Como un ejemplo :

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*5TdZqzM5JkEI8UgkxBY0SQ.png)