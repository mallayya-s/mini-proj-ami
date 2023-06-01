### "Mini Project AMI code" 

Please consider the  below flow of deployment of the code.

## First, as the packer needs the key to be available in AWS account in which AMI will be built. We need to create the ec2-key pair first.

1. Clone this repo in local
2. Navigate to ./packer-key-tf folder
3. Run terraform init, terraform plan and finally terraform apply commands to create key pair.
4. Once the terraform is applied successfully, the private key file with the name packer-key will be created in ./packer-key-tf folder (where terraform have ran)


## Second, Run the packer build to generate AMI.
1. Ensure the right key pair name and path to private key is declared in app-ami.json for the variable ssh_private_key_file and ssh_keypair_name
2. Run below command from the parent directory where app-ami.json is located
   ** packer validate app_ami.json  # this will finds any syntactical error in app-ami.json file
   ** packer build app_ami.json     # This actually generate the AMI by taking RHEL8 as foundation AMI with the customized configs.
