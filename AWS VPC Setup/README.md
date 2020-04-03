This terraform code creates end to end VPC setup.

It creates your VPC, Public and Private subnets in each availability zones, Public and Private route tables and Internet Gateway.

Command used :

To see what changes this code will do:
    
    terraform plan -var-file=aws.tfvars 

To apply the chanages:

    terraform apply -var-file=aws.tfvars -auto-approve

To destroy everything which this code created:

    terraform destroy -var-file=aws.tfvars -auto-approve


