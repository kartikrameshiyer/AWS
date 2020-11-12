aws ec2 run-instances \
--image-id ami-07a29e5e945228fa1 \
--count 1 \
--instance-type t2.micro \
--key-name Test \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Project,Value=udacity}]' \
#--security-group-ids sg-0b372f10ebe311fc4 \
#--user-data file://startup_script.sh 

aws ec2 describe-instances \
--query 'Reservations[*].Instances[*].[PublicIpAddress,Tags[*]]' \
--filters "Name=tag:Project,Values=udacity" \
--output text >> inventory


#--query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value}' 
#aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Placement.AvailabilityZone, State.Name, InstanceId]' --output text | grep us-west-2a | grep running | awk '{print $3}'
#aws ec2 terminate-instances --instance-ids i-1234567890abcdef0