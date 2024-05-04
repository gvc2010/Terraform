variable "access_key" {
  sensitive = true
}

variable "secret_key" {
  sensitive = true
}

variable "ecr_repo_name" {
  description = "Repository Names"
  type        = list(any)
  default = [
    "flyembraer-apigateway-ecr",
    "flyembraer-configserver-ecr",
    "flyembraer-downloadcenter-ecr",
    "flyembraer-frontend-ecr",
    "flyembraer-portal-backend-ecr",
    "flyembraer-portal-ecr",
    "flyembraer-servicediscovery-ecr",
    "flyembraer-alfresco-ecr",
    "flyembraer-keycloack-ecr",
    "flyembraer-solr-ecr"
  ]
}