# AWS
Devops
**** Shell scripts*****

Create : This shell script is used to create stack. Parameters which need to be passed are Stack name  yml file name and parameter file name
Update : This shell script is used to Update stack. Parameters which need to be passed are Stack name  yml file name and parameter file name
Delete : This shell script is used to delete stack. Parameters are stack name. 
List Stack: This is used to list the stacks in your aws account. 

*****YAML 7 Parameter******
infra-deploy.yml file contains all the network resources. 
demo-server.yml file contains all the servers and security groups  for the infrastructure. 
Infra-para.json is the parameter file for infra-deploy.yml
server-para.json is the parameter file for demo-server.yml

Bastion Host: demo-server creates a bastion host on the public network. 
