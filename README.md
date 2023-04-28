## Init

Create files production.tfvars


### 1-infra init
```
    terraform init -backend-config="infrastructure-prod.config"
    terraform plan -var-file="production.tfvars"
    terraform apply -var-file="production.tfvars"
    terraform destroy -var-file="production.tfvars"
```

### 2-platform init
```
    terraform init -backend-config="platform-prod.config"
    terraform apply -var-file="production.tfvars"

```
