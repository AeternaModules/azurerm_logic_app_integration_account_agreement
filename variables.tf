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
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_integration_account_agreement's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IntegrationAccountAgreementName] !ok
  # path: name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountAgreementName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountAgreementName: invalid when len(value) > 80]
  # path: name
  #   source:    [from validate.IntegrationAccountAgreementName] !regexp.MustCompile(`^[A-Za-z0-9-().]+$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: integration_account_name
  #   source:    validate.IntegrationAccountName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: agreement_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: content
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: guest_identity.qualifier
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityQualifier] !ok
  # path: guest_identity.qualifier
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityQualifier] !regexp.MustCompile(`^[A-Za-z0-9]+$`).MatchString(v)
  # path: guest_identity.value
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue] !ok
  # path: guest_identity.value
  #   condition: length(value) <= 128
  #   message:   [from validate.IntegrationAccountPartnerBusinessIdentityValue: invalid when len(value) > 128]
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue: invalid when len(value) > 128]
  # path: guest_identity.value
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue] !regexp.MustCompile(`^[A-Za-z0-9-() ._]+$`).MatchString(v)
  # path: guest_partner_name
  #   source:    [from validate.IntegrationAccountPartnerName] !ok
  # path: guest_partner_name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountPartnerName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountPartnerName: invalid when len(value) > 80]
  # path: guest_partner_name
  #   source:    [from validate.IntegrationAccountPartnerName] !regexp.MustCompile(`^[A-Za-z0-9-().]+$`).MatchString(v)
  # path: host_identity.qualifier
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityQualifier] !ok
  # path: host_identity.qualifier
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityQualifier] !regexp.MustCompile(`^[A-Za-z0-9]+$`).MatchString(v)
  # path: host_identity.value
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue] !ok
  # path: host_identity.value
  #   condition: length(value) <= 128
  #   message:   [from validate.IntegrationAccountPartnerBusinessIdentityValue: invalid when len(value) > 128]
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue: invalid when len(value) > 128]
  # path: host_identity.value
  #   source:    [from validate.IntegrationAccountPartnerBusinessIdentityValue] !regexp.MustCompile(`^[A-Za-z0-9-() ._]+$`).MatchString(v)
  # path: host_partner_name
  #   source:    [from validate.IntegrationAccountPartnerName] !ok
  # path: host_partner_name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountPartnerName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountPartnerName: invalid when len(value) > 80]
  # path: host_partner_name
  #   source:    [from validate.IntegrationAccountPartnerName] !regexp.MustCompile(`^[A-Za-z0-9-().]+$`).MatchString(v)
  # path: metadata[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

