This terraform code launches an AWS EC2 instance using data source and we have not hard coded availability zone anywhere in the code.
Availability zone is getting picked using data source at runtime.

Command used :

To see what changes this code will do:
    
    terraform plan -var-file=ec2.tfvars 

To apply the chanages:

    terraform apply -var-file=ec2.tfvars -auto-approve

To destroy everything which this code created:

    terraform destroy -var-file=ec2.tfvars -auto-approve


