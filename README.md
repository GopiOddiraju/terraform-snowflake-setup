# Overview

This project contains Terraform configurations to deploy a basic Snowflake setup, including creating a database, schema, and table. 

## Prerequisites

- **Snowflake Account**: Ensure you have a Snowflake account and the required credentials.
- **Terraform**: Installed on your machine.


## Setup Steps

### 1. Clone the Repository

```bash
git clone https://github.com/GopiOddiraju/terraform-snowflake-setup.git
cd terraform-snowflake-setup
```


### 2. Initialize Terraform
```bash
terraform init
```

### 3. Plan the Deployment
```bash
terraform plan
```

### 4. Apply the Deployment
```bash
terraform apply
```

You will be prompted to enter the following details.
- Snowflake Username
- Snowflake password
- Snowflake account name
- Snowflake organization name


### 5. Verify the Deployment

Log into your snowflake account to verify that the database, schema,and table have been created.