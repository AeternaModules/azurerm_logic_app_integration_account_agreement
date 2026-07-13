variable "logic_app_integration_account_agreements" {
  description = <<EOT
Map of logic_app_integration_account_agreements, attributes below
Required:
    - agreement_type
    - content
    - guest_partner_name
    - host_partner_name
    - integration_account_name
    - name
    - resource_group_name
    - guest_identity (block):
        - qualifier (required)
        - value (required)
    - host_identity (block):
        - qualifier (required)
        - value (required)
Optional:
    - metadata
EOT

  type = map(object({
    agreement_type           = string
    content                  = string
    guest_partner_name       = string
    host_partner_name        = string
    integration_account_name = string
    name                     = string
    resource_group_name      = string
    metadata                 = optional(map(string))
    guest_identity = object({
      qualifier = string
      value     = string
    })
    host_identity = object({
      qualifier = string
      value     = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_agreements : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_agreements : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_agreements : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_agreements : (
        can(jsondecode(v.content))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_agreements : (
        v.metadata == null || (alltrue([for x in v.metadata : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 22 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

