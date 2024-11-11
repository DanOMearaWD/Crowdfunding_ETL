# Crowdfunding ETL Project

## Project Overview

The objective of this project is to practice building an ETL pipeline using Python, Pandas, and regular expressions to extract and transform data. The data is related to a crowdfunding platform, and the final goal is to load the transformed data into a PostgreSQL database.

## Project Components

The project involves the following tasks:

1. **Extract, Transform, and Load (ETL)**:
   - Extract data from the provided `crowdfunding.xlsx` and `contacts.xlsx` files.
   - Transform the data into several DataFrames, clean and manipulate the data as necessary.
   - Export the transformed data to CSV files: `category.csv`, `subcategory.csv`, `campaign.csv`, and `contacts.csv`.

2. **Create an Entity Relationship Diagram (ERD)**:
   - Design and sketch an ERD of the tables using QuickDBD based on the transformed data.

3. **Database Schema**:
   - Use the ERD to create a Postgres schema (`crowdfunding_db_schema.sql`) with tables, primary keys, and foreign keys.
   - Create a new PostgreSQL database (`crowdfunding_db`), define tables using the schema, and load the data from the CSV files.

## Files

- **Resources**:
  - `crowdfunding.xlsx`: Contains crowdfunding campaign data.
  - `contacts.xlsx`: Contains information about the contacts involved in the campaigns.
  
- **CSV Files**:
  - `category.csv`: Contains the categories for the crowdfunding campaigns.
  - `subcategory.csv`: Contains the subcategories for the crowdfunding campaigns.
  - `campaign.csv`: Contains the crowdfunding campaign details.
  - `contacts.csv`: Contains the contact information for users involved in the campaigns.

- **SQL File**:
  - `crowdfunding_db_schema.sql`: The schema for the PostgreSQL database, including tables, primary and foreign keys.

- **Jupyter Notebook**:
  - `ETL_Mini_Project_DOMeara_ALopez_VMadhugiri.ipynb`: The main Jupyter notebook where the ETL pipeline is implemented.

- **ERD**:
  - `ERD.png`: The entity relationship diagram showing the relationships between the tables.

## Project Instructions

### 1. **Category and Subcategory DataFrames**:
   - Create DataFrames for categories and subcategories, assigning sequential unique IDs (`cat1`, `cat2`, etc., for categories, `subcat1`, `subcat2`, etc., for subcategories).
   - Export these DataFrames to `category.csv` and `subcategory.csv`.

### 2. **Campaign DataFrame**:
   - Extract and transform the campaign data from `crowdfunding.xlsx`.
   - Merge the category and subcategory IDs into the campaign DataFrame.
   - Export the campaign DataFrame to `campaign.csv`.

### 3. **Contacts DataFrame**:
   - Extract contact data from `contacts.xlsx` using Python dictionary methods or regular expressions.
   - Split the "name" column into first and last names.
   - Export the contacts DataFrame to `contacts.csv`.

### 4. **Crowdfunding Database**:
   - Design the ERD and schema for the database.
   - Create the `crowdfunding_db` PostgreSQL database and create tables based on the schema.
   - Import the CSV files into the corresponding tables.
   - Verify the data by running a SELECT query on each table.
