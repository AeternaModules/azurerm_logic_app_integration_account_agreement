output "logic_app_integration_account_agreements" {
  description = "All logic_app_integration_account_agreement resources"
  value       = azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements
}
output "logic_app_integration_account_agreements_agreement_type" {
  description = "List of agreement_type values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.agreement_type]
}
output "logic_app_integration_account_agreements_content" {
  description = "List of content values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.content]
}
output "logic_app_integration_account_agreements_guest_identity" {
  description = "List of guest_identity values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.guest_identity]
}
output "logic_app_integration_account_agreements_guest_partner_name" {
  description = "List of guest_partner_name values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.guest_partner_name]
}
output "logic_app_integration_account_agreements_host_identity" {
  description = "List of host_identity values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.host_identity]
}
output "logic_app_integration_account_agreements_host_partner_name" {
  description = "List of host_partner_name values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.host_partner_name]
}
output "logic_app_integration_account_agreements_integration_account_name" {
  description = "List of integration_account_name values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.integration_account_name]
}
output "logic_app_integration_account_agreements_metadata" {
  description = "List of metadata values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.metadata]
}
output "logic_app_integration_account_agreements_name" {
  description = "List of name values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.name]
}
output "logic_app_integration_account_agreements_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_account_agreements"
  value       = [for k, v in azurerm_logic_app_integration_account_agreement.logic_app_integration_account_agreements : v.resource_group_name]
}

