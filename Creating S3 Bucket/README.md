This terraform code creates AWS S3 Bucket

Command used :

To see what changes this code will do:
    
    terraform plan -var-file=s3.tfvars 

To apply the chanages:

    terraform apply -var-file=s3.tfvars -auto-approve

To destroy everything which this code created:

    terraform destroy -var-file=s3.tfvars -auto-approve

Note : Before destroying please "prevent_destroy" value to false and then fire "terraform destroy -var-file=s3.tfvars -auto-approve" command


