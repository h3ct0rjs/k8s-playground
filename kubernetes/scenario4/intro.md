# PODs en Kubernetes

En Kubernetes, un Pod es la unidad más pequeña que puedes desplegar y gestionar.
En este escenario, aprenderás sobre los Pods, su estructura y cómo se utilizan para ejecutar aplicaciones en contenedores. Tambien explorarás cómo crear y gestionar Pods usando manifiestos YAML.

## Objetivo

- Comprender el concepto de Pod y su importancia en Kubernetes.
- Aprender a crear y gestionar Pods usando manifiestos YAML.

# 💾 Volúmenes y Storage en Kubernetes

En Kubernetes, los **volúmenes** permiten que los datos persistan más allá del ciclo de vida de un pod. Son fundamentales para aplicaciones que necesitan guardar información, como bases de datos.

## ¿Por qué usar volúmenes?

- Los datos de un pod se pierden si el pod se elimina o reinicia.
- Los volúmenes permiten compartir datos entre contenedores de un mismo pod.
- Permiten conectar almacenamiento externo (NFS, discos en la nube, etc.).

En este escenario aprenderás a crear y usar volúmenes, y a gestionar almacenamiento persistente con PersistentVolume y PersistentVolumeClaim.

