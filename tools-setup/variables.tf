variable "tools" {
  default = {
    vault = {
      vm_size = "Standard_B2s"
    }
  }
}

variable "rg_name" {
  default = "project-1"
}
variable "rg_location" {
  default = "UK West"
}
