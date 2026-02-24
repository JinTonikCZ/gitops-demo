# Terraform + Docker (lokální POC)

Tento adresář obsahuje lokální POC (pilotní ověření) workflow Terraformu pomocí Docker provideru.

## Účel
Cílem je demonstrovat princip Infrastructure as Code (IaC) pro prostředky mimo Kubernetes bez potřeby reálného cloudu.
POC ověřuje kroky `terraform init/plan/apply` a výsledkem je spuštěný lokální kontejner NGINX.

## Spuštění
```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply -auto-approve
