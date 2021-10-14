#SFTP Variables  

variable "region" {
  description = "Region donde se establece el ambiente de AWS"
  type = string 
  default = "us-east-1"
}

variable "aws-transfer-server-name" {
  description = "Nombre del servidor sftp"
  type = string 
  default = ""
}

variable "IAM-role-name-for-sftp" {
  description = "Nombre del role de IAM "
  type = string 
  default = "iamr-transferfamily-sftp"
}

variable "s3-access-policy-name" {
  description = "Politica de acceso del bucket"
  type = string 
  default = "s3-access-policy-sftp"
}

variable "s3-policy-file-location" {
  description = "Politica de acceso a archivos"
  type = string 
  default = "${file("./modules/s3-policy-bucket-access.json")}"
}

variable "sftp-user-name" {
  description = "Usuario con acceso al SFTP"
  type = string 
  default = "env-app-user"
}

variable "sftp-s3-bucket-name" {
  description = "Bucket donde se almacenaran los archivos entrantes"
  type = string 
  default = "env-app-s3-bucket"
}

variable "ssh-public-key-file-location" {
  description = "Archivo con la llave RSA publica"
  type = string 
  default = "${file("./modules/public-rsa-sftp.pub")}"
}