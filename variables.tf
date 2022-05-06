variable "location" {
  type        = string
  default     = "West Europe"
  description = "Esta es la ubicacion del despliegue"
}

variable "rgname" {
  type        = string
  default     = "tf-rgconstact"
  description = "Este es el nombre del Grupo de Recurso"
}

variable "stgactname" {
  type        = string
  default     = "stoact06mayo2022"
  description = "Este es el nombre de la Cuenta de Almacenamiento"
}