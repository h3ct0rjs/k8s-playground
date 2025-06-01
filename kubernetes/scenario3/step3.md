## Paso 3: Service de tipo LoadBalancer (en la nube)

En entornos de nube (como GKE, EKS, AKS), puedes crear un Service de tipo LoadBalancer para obtener una IP pública automáticamente:

```sh
kubectl expose deployment mi-app --port=80 --target-port=80 --name=mi-app-lb --type=LoadBalancer
```

Verifica el estado:

```sh
kubectl get services
```

Cuando el Service esté listo, verás una IP externa asignada. Esto es ideal para exponer aplicaciones de producción al mundo exterior.

> Nota: En entornos locales como minikube o kind, LoadBalancer puede no funcionar igual que en la nube.