This terraform code launches an AWS EC2 instance based on the number of count mentioned in the variable file.

Command used :

To see what changes this code will do:
    
    terraform plan -var-file=ec2.tfvars 

To apply the chanages:

    terraform apply -var-file=ec2.tfvars -auto-approve

To destroy everything which this code created:

    terraform destroy -var-file=ec2.tfvars -auto-approve


