## Estrategias de Deployment

Kubernetes soporta varias estrategias para desplegar nuevas versiones de tus
aplicaciones, en este escenarios solo te mencionaremos las mas comunes, pero no
las implementaremos :

- **Rolling Update:** Actualiza los Pods de manera gradual, reemplazando las
instancias antiguas por nuevas sin tiempo de inactividad.

- **Recreate:** Elimina todos los Pods existentes antes de crear los nuevos,
lo que puede causar una breve interrupción.

- **Blue/Green Deployment:** Mantiene dos entornos (azul y verde), y el tráfic
se redirige al nuevo entorno una vez que está listo.

- **Canary Deployment:** Despliega la nueva versión a un pequeño subconjunto
de usuarios antes de lanzarla a todos, permitiendo validar cambios de forma controlada.

Para ver de manera visual y mas detallas las estrategias de Deployment para aplicaciones ,
puedes consultar el siguiente video:

**~10Min**

[![Deployment Strategies](https://1000logos.net/wp-content/uploads/2017/05/Youtube-Logo.png)](https://www.youtube.com/watch?v=AWVTKBUnoIg)