# main.tf

# Configure the Azure provider
provider "azurerm" {
  features {}
  subscription_id = "6d41859f-600b-4bdf-9b5d-084a0582cb54"
}

# Define a variable for the Resource Group name
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

# Define a variable for the Azure region
variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
}

# Create the Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Output the ID of the created Resource Group
output "resource_group_id" {
  description = "The ID of the created Resource Group"
  value       = azurerm_resource_group.rg.id
}
