**Introduction**

This repository cointains a terraform template to provision the following components con Confluent Cloud:
* topics
* schemas on schema registry

**Requirements**

The following resources must already exists in your confluent cloud account:
* environment
* kafka cluster
* stream governance
* ksqldb

**How to**

To run this terraform template directly follow these steps:
1. assing values to variables in terraform.tfvars file
2. open a terminal and from the root dir of this repository and run the command `terraform init`
3. from the terminal run the command `terraform apply`

**Clean up**

To clean up follow these steps:
1. open a terminal and from the root dir of this repository and run the command `terraform destroy`