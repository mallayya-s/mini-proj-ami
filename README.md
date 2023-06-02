### CREATING APP CUSTOMIZED AMI USING PACKER

Please note this AMI creation has to be dealt by local. 
Ensure you have installed packer in your local. If not pls install is from https://packer.io set its location in Path that we can access it whenever we run any command with packer in command from anywhere.
1.	Clone the repo in local https://github.com/mallayya-s/mini-proj-ami.git 
2.	Goto the cloned repo, launch the command prompt from the location where app_ami.json is located.
3.	Run below command to validate weather the json have any syntactical errors
packer validate app_ami.json
4.	Run below command to generate application ami
Packer build app_ami.json 


### Note: If you don’t specify the security group and key pair. the packer creates its own temporary keypair and security groups for generating AMI in the default VPC, they will be later auto destroyed, once the packer run is completed. So we are not specifying security group and keypair the packer creates the packer instance in default VPC, hence we need to ensure the internet gateway is allowed in those default subnets to allow 0/0 n/w for ssh connectivity. 

