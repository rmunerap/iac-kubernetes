#!/bin/bash

APP_NAME="app-hola-mundo"
NAMESPACE="default"
DEPLOYMENT_FILE="k8s/deployment.yaml"

echo "🔍 Verificando estado del cluster Kubernetes..."
kubectl get pods -n $NAMESPACE

echo "🔎 Verificando si la aplicación $APP_NAME está corriendo..."

RUNNING_PODS=$(kubectl get pods -n $NAMESPACE \
  -l app=$APP_NAME \
  --field-selector=status.phase=Running \
  --no-headers 2>/dev/null | wc -l)

if [ "$RUNNING_PODS" -eq 0 ]; then
  echo "❌ La aplicación no está corriendo. Desplegando nuevamente..."
  kubectl apply -f $DEPLOYMENT_FILE
  echo "✅ Deployment aplicado correctamente."
else
  echo "✅ La aplicación está corriendo correctamente ($RUNNING_PODS pod(s))."
fi
