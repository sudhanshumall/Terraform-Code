This terraform code launches an AWS EC2 instance in each availability zones using data source.
Availability zone is getting picked using data source at runtime.

Also, this code attaches existing security group to the newly launched instances.

Command used :

To see what changes this code will do:
    
    terraform plan -var-file=ec2.tfvars 

To apply the chanages:

    terraform apply -var-file=ec2.tfvars -auto-approve

To destroy everything which this code created:

    terraform destroy -var-file=ec2.tfvars -auto-approve


