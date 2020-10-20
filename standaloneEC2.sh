aws ec2 run-instances \
--image-id ami-07a29e5e945228fa1 \
--count 1 \
--instance-type t2.micro \
--key-name Test \
--security-group-ids sg-0b372f10ebe311fc4 \
--user-data file://startup_script.sh