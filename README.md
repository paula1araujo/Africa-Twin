# Africa-Twin
# WordPress Deployment on Azure using Terraform and Docker

## Description

This project contains a Terraform script to deploy a WordPress site on an Azure Virtual Machine (VM) using Docker.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure CLI installed and authenticated

## Steps to Deploy

1. Clone the repository:
    ```sh
    git clone https://github.com/<your-username>/<your-repo-name>.git
    cd <your-repo-name>
    ```

2. Initialize Terraform:
    ```sh
    terraform init
    ```

3. Apply the Terraform script:
    ```sh
    terraform apply
    ```

4. Confirm the apply with `yes`.

5. After the script completes, find the public IP address of the VM in the output and open it in your browser to access the WordPress site.

## Note

Make sure to replace the `<your-username>` and `<your-repo-name>` with your GitHub username and the name of your repository.

## Clean Up

To delete all resources created by Terraform:
```sh
terraform destroy

