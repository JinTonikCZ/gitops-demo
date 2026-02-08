# gitops-demo

Tento repozitář slouží jako demonstrační příklad GitOps přístupu pro správu Kubernetes prostředků.
Repozitář obsahuje deklarativní definici požadovaného stavu (desired state) testovací aplikace NGINX.
Změny jsou prováděny výhradně formou commitů do Git a následně synchronizovány do clusteru pomocí Argo CD (pull-based model).

## Obsah repozitáře
- `nginx-deployment.yaml` – Kubernetes Deployment pro NGINX (testovací aplikace)
- `nginx-service.yaml` – Kubernetes Service pro zpřístupnění aplikace (ClusterIP)
  - (pokud používáš pouze Deployment, tento soubor lze vynechat)

## Předpoklady
- Kubernetes cluster (v práci použito MicroK8s)
- Přístup ke clusteru pomocí `kubectl` / `microk8s kubectl`
- Argo CD připojené k tomuto repozitáři (Application ukazuje na tuto složku)

## Jak ověřit nasazení
1. Argo CD provede synchronizaci manifestů z Git repozitáře do clusteru.
2. Stav prostředků lze ověřit příkazem:
   - `kubectl get pods`
   - `kubectl get deployment nginx`
   - `kubectl get svc nginx`

## Ukázka změny (GitOps workflow)
Změna konfigurace (např. počet replik v `nginx-deployment.yaml`) je provedena commitem do Git.
Argo CD následně automaticky detekuje rozdíl mezi desired a actual state a prosadí změnu do clusteru.

## Poznámka
Repozitář je určen pro studijní účely v rámci diplomové práce „Implementace GitOps pro správu cloudové infrastruktury“.
