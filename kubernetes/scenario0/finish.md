# 🎉 Finalizando el Scenario0

¡Felicidades! 🚀 Has completado el primer escenario del Workshop de CNCF Pereira sobre comandos básicos en Kubernetes. A lo largo de este  has aprendido a utilizar varios comandos esenciales para interactuar con un clúster de Kubernetes, así como a verificar el estado de los recursos en tu entorno.

## 🤔 Reflexiones Finales
Esperamos que este taller te haya proporcionado una comprensión sólida de cómo trabajar con Kubernetes y que te sientas más cómodo utilizando la línea de comandos para gestionar tus clústeres.

Aqui tienes una lista de los comandos que has aprendido:
- `kubectl version`: Verificar la versión de Kubernetes.
- `kubectl cluster-info`: Verificar el estado del clúster.
- `kubectl get nodes`: Verificar los nodos del clúster.
- `kubectl get pods --all-namespaces`: Verificar los pods del clúster.
- `kubectl get services`: Verificar los servicios del clúster.
- `kubectl get deployments`: Verificar los deployments del clúster.
- `kubectl get namespaces`: Verificar los namespaces del clúster.
- `kubectl create namespace <nombre-del-namespace>`: Crear un nuevo namespace.
- `kubectl config set-context --current --namespace=<nombre-del-namespace>`: Usar un namespace específico.
- `kubectl get all -n <nombre-del-namespace>`: Listar recursos en un namespace específico.
- `kubectl config current-context`: Verificar la configuración del contexto actual.
- `kubectl get all --all-namespaces`: Listar todos los recursos en todos los namespaces.
- `kubectl get all -o wide`: Listar recursos con información detallada.
- `kubectl exec -it <pod-name> -- <command>`: Ejecutar un comando dentro de un Pod.
- `kubectl logs <pod-name>`: Ver los logs de un Pod.
- `kubectl delete pod <pod-name>`: Eliminar un Pod.
- `kubectl describe pod <pod-name>`: Obtener detalles sobre un Pod específico.
- `kubectl run <pod-name> --image=<image-name>`: Desplegar un Pod con una imagen de contenedor.

## 📚 Recursos Adicionales
Para seguir aprendiendo sobre Kubernetes, aquí hay algunos recursos que pueden ser útiles:
- [📖 Documentación oficial de Kubernetes](https://kubernetes.io/docs/home/)
- [💻 Kubernetes en GitHub](https://github.com/kubernetes/kubernetes)
- [🎓 Cursos en línea sobre Kubernetes](https://www.coursera.org/courses?query=kubernetes)

## 🛣️ Próximos Pasos
- 🏗️ Despliega más Pods y experimenta con diferentes imágenes de contenedores en el siguiente escenario.
- 💡 Practica los comandos que has aprendido en este entorno de Kubernetes de prueba.

¡Gracias por participar y buena suerte en tu siguiente escenario con Kubernetes! 🧑‍💻🌟