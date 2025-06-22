variable "tools" {
  default = {
    vault = {
      vm_size = "Standard_D2ls_v5"
    }
    github-runner = {
      vm_size = "Standard_D2ls_v5"
    }
  }
}

variable "rg_name" {
  default = "project-1"
}
variable "rg_location" {
  default = "UK West"
}
