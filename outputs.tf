output "logic_app_integration_account_agreements_id" {
  description = "Map of id values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.id }
}
output "logic_app_integration_account_agreements_agreement_type" {
  description = "Map of agreement_type values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.agreement_type }
}
output "logic_app_integration_account_agreements_content" {
  description = "Map of content values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.content }
}
output "logic_app_integration_account_agreements_guest_identity" {
  description = "Map of guest_identity values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.guest_identity }
}
output "logic_app_integration_account_agreements_guest_partner_name" {
  description = "Map of guest_partner_name values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.guest_partner_name }
}
output "logic_app_integration_account_agreements_host_identity" {
  description = "Map of host_identity values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.host_identity }
}
output "logic_app_integration_account_agreements_host_partner_name" {
  description = "Map of host_partner_name values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.host_partner_name }
}
output "logic_app_integration_account_agreements_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.integration_account_name }
}
output "logic_app_integration_account_agreements_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.metadata }
}
output "logic_app_integration_account_agreements_name" {
  description = "Map of name values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.name }
}
output "logic_app_integration_account_agreements_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_agreements, keyed the same as var.logic_app_integration_account_agreements"
  value       = { for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : k => v.resource_group_name }
}

