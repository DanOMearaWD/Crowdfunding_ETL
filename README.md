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

![](ERD.png)

# Key Findings

## Data Extraction & Preparation
- Successfully loaded and previewed `crowdfunding.xlsx` and `contacts.xlsx` data files using Pandas.
- Extracted relevant information into structured DataFrames, transforming raw data into a usable format.

## Category & Subcategory Creation
- Extracted and split categories and subcategories from a combined column using string manipulation techniques.
- Created `category.csv` and `subcategory.csv` with unique, sequentially numbered identifiers for each category and subcategory.

## Data Cleaning & Formatting
- Formatted the campaign data by renaming and converting columns for consistency, including:
  - `blurb` to `description`.
  - `launched_at` and `deadline` columns to `launch_date` and `end_date`, converting to datetime format.
- Ensured `goal` and `pledged` values were converted to `float`.
- Merged the cleaned campaign data with `category_df` and `subcategory_df` for comprehensive information.

## Campaign DataFrame Creation
- Created a structured `campaign.csv` file, ensuring the inclusion of all necessary columns: campaign identifiers, financial metrics, and formatted dates.
- Added `category_id` and `subcategory_id` to match the category and subcategory information.

## Contact Information Parsing
- Extracted and cleaned contact data from the JSON-formatted column using Python's `json` module and regular expressions.
- Created `contacts.csv` with individual columns for `contact_id`, `first_name`, `last_name`, and `email`, ensuring accurate data types.

## Data Export
- Exported all cleaned and formatted DataFrames as CSV files for future analysis and integration:
  - `category.csv`
  - `subcategory.csv`
  - `campaign.csv`
  - `contacts.csv`

These transformations and extractions ensure that the crowdfunding and contact data are ready for analysis, modeling, or integration into other systems.
