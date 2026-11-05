# platform-terraform-modules

Reusable Terraform modules for the Golden Path workshop.

## Module: azure-container-apps

Creates an Azure Resource Group, Azure Container Registry, Log Analytics workspace, Container Apps Environment, and a public Azure Container App. It also grants the GitHub Actions service principal AcrPush and the Container App managed identity AcrPull.

Usage is shown in `golden-path-template/terraform`.

## Requirements

- Terraform >= 1.6
- AzureRM provider 4.x
- Azure permissions to create resources and role assignments

This is workshop code. For production, pin module references to a reviewed release tag or commit SHA, apply least privilege, and add policy, cost controls, monitoring, and remote-state governance.
