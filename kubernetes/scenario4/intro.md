# 💾 Almacenamiento de Datos en Kubernetes

En Kubernetes, los **volúmenes** permiten que los datos persistan más allá del ciclo de vida de un 📦Pod. Son fundamentales para aplicaciones que necesitan guardar información, como bases de datos, entre otros.

## ¿Por qué usar volúmenes?

- Los datos de un 📦Pod se pierden si el 📦Pod se elimina o reinicia, por lo que los volúmenes proporcionan una forma de almacenar datos de manera persistente.
- Los volúmenes permiten compartir datos entre contenedores de un mismo 📦Pod.
- Facilitan la conexión a almacenamiento externo, como NFS, discos en la nube, etc.

## 🕶️ Objetivos del escenario
- Entender cómo funcionan los volúmenes en Kubernetes.
- Aprender a crear y usar volúmenes en Pods.
- Probar la persistencia de datos en un Pod.
- Conocer los conceptos de **PersistentVolume** y **PersistentVolumeClaim** para gestionar almacenamiento persistente.


En este escenario aprenderás a crear y usar 💾volúmenes, y a gestionar almacenamiento persistente con **PersistentVolume** y **PersistentVolumeClaim**.

