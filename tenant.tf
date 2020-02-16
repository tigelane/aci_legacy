resource "aci_tenant" "tenant" {
  name = "Venomshade"
}

resource "aci_vrf" "vrf" {
  tenant_dn = "${aci_tenant.tenant.id}"
  name = "${aci_tenant.tenant.name}"
}

resource "aci_application_profile" "app_profile" {
  tenant_dn  = "${aci_tenant.tenant.id}"
  name       = "Legacy"
}