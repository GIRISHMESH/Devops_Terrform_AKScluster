
variable "location" {
  type        = string
  description = "Azure Region for resource deployment"
  default     = "Central US"
}

variable "resource_group_name" {
  type        = string
  description = "Base Resource Group name"
  default     = "terraform-aks"
}

variable "environment" {
  type        = string  
  description = "Deployment environment"  
  default     = "dev"
}


variable "ssh_public_key" {
  description = "SSH Public Key for Linux nodes"
  type        = string
}



variable "windows_admin_username" {
  type        = string
  description = "Windows admin username"  
  default     = "azureuser"
}

variable "windows_admin_password" {
  type        = string
  description = "Windows admin password (recommend Key Vault in production)"  
  default     = "P@ssw0rd1234"
}



variable "environment" {}
backend "azurerm" {
  resource_group_name  = "terraform-storage-rg"
  storage_account_name = "terraformstatexlrwdrzs"
  container_name       = "tfstatefiles"
  key                  = "aks-${var.environment}.tfstate"
}



