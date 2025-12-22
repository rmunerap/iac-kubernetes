Prueba Técnica DevOps – Kubernetes, CI/CD y GitOps

Este proyecto corresponde a una prueba técnica DevOps cuyo objetivo es demostrar conocimientos en Infraestructura como Código, CI/CD, versionamiento, automatización con Bash y Kubernetes, utilizando herramientas modernas del ecosistema DevOps.

Repositorios entregados

IaC / Kubernetes

https://github.com/rmunerap/iac-kubernetes


Aplicación + CI/CD + Git Flow

https://github.com/rmunerap/app-hola-mundo


Pipeline Templates (opcional)

https://github.com/rmunerap/pipelines-templates

Parte 1 – Infraestructura como Código (IaC)

Se desplegó un clúster Kubernetes utilizando Minikube.

Se definieron manifiestos Kubernetes versionados:

Deployment

Service

La infraestructura y configuración se gestionan como código (IaC).

Parte 2 – CI/CD con Azure DevOps

Se desarrolló una aplicación web básica en Node.js que responde con “hola mundo”.

La aplicación fue contenedorizada con Docker.

Se implementó un pipeline CI/CD en Azure DevOps que:

Construye la aplicación

Genera la imagen Docker

Publica la imagen en Docker Hub

Prepara el despliegue en Kubernetes

Parte 3 – Versionamiento y Git Flow

Se implementó Git Flow siguiendo buenas prácticas:

develop: rama de desarrollo

master: rama de producción

Se utilizó versionamiento semántico mediante tags:

v1.0.0


Se documentó el flujo mediante un diagrama Git Flow.

Parte 4 – Automatización con Bash

Se desarrolló un script en Bash (check-app.sh) que:

Verifica el estado del clúster (kubectl get pods)

Comprueba si la aplicación está corriendo

Redepliega automáticamente el deployment.yaml si no hay pods activos

El script es compatible con Minikube y AWS EKS (con kubeconfig configurado).

Evidencias

Se incluyen capturas de pantalla que muestran:

Estructura de los repositorios

Ramas y tags

Ejecución del pipeline en Azure DevOps

Publicación de la imagen en Docker Hub

Estado de los pods en Kubernetes

Autor

Roberto Munera
Prueba Técnica DevOps