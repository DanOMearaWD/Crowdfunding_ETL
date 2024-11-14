-- !Add new database in pgAdmin named crowdfunding_db --
-- Import csv files in same order tables are created: Category,Subcategory,Contacts,Campaign

CREATE TABLE IF NOT EXISTS Category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY,
    subcategory VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Contacts (
    contact_id CHAR(4) PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(256) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Campaign (
    cf_id VARCHAR(4) PRIMARY KEY,
    contact_id CHAR(4) NOT NULL REFERENCES Contacts (contact_id),
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal MONEY NOT NULL,
    pledged MONEY NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_count INT NOT NULL,
    country CHAR(2) NOT NULL,
    currency CHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL REFERENCES Category (category_id),
    subcategory_id VARCHAR(8) NOT NULL REFERENCES Subcategory (subcategory_id)
);

-- Verify Table Creation/Imports --

-- Check the 'category' table
SELECT * FROM category;

-- Check the 'subcategory' table
SELECT * FROM subcategory;

-- Check the 'contacts' table
SELECT * FROM contacts;

-- Check the 'campaign' table
SELECT * FROM campaign;