variable "tools" {
  default = {
    vault = {
      vm_size = "Standard_D2ls_v5"
    }
    github-runner = {
      vm_size = "Standard_D2ls_v5"
    }
    # elk-stack = {
    #   vm_size = "Standard_E2bds_v5"
    #   spot    = true
    # }
    # sonarqube = {
    #   vm_size = "Standard_D2as_v5"
    #   spot    = true
    # }
  }
}

variable "rg_name" {
  default = "project-1"
}
variable "rg_location" {
  default = "UK West"
}
