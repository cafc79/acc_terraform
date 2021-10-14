module "sftp" {

  source = "./modules"

  #AWS-SFTP
  region = var.region
  aws-transfer-server-name = var.aws-transfer-server-name
  IAM-role-name-for-sftp = var.IAM-role-name-for-sftp
  s3-access-policy-name = var.s3-access-policy-name
  sftp-user-name = var.sftp-user-name
  sftp-s3-bucket-name = var.sftp-s3-bucket-name
  s3-policy-file-location = var.s3-policy-file-location
  ssh-public-key-file-location = ssh-public-key-file-location
}