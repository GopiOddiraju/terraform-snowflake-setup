terraform {
    required_providers {
        snowflake={
            source="Snowflake-Labs/snowflake"
        }
    }
}


#Define the snowflake provider
provider "snowflake" {
    user=var.user
    password=var.password
    account_name=var.account_name
    organization_name=var.organization_name
    #Enable preview features
    preview_features_enabled=["snowflake_table_resource"]
}

#Create a snowflake database
resource "snowflake_database" "example_database" {
    name="example_database"
}


#Create a snowflake table
resource "snowflake_table" "example_table" {
    database=snowflake_database.example_database.name
    schema=snowflake_schema.example_schema.name  #Reference created schema
    name="example_table"

    column {
        name="ID"
        type="NUMBER"
    }
    column {
        name="NAME"
        type="STRING"
    }
}

#Create another snowflake table
resource "snowflake_table" "example_table1" {
    database=snowflake_database.example_database.name
    schema=snowflake_schema.example_schema.name  #Reference created schema
    name="example_table1"

    column {
        name="USER_ID"
        type="STRING"
    }
    column {
        name="ACCOUNT_CREATED_DATE"
        type="DATE"
    }
}

#Create a snowflake schema
resource "snowflake_schema" "example_schema" {
    database=snowflake_database.example_database.name  #Reference created database
    name="example_schema"
}