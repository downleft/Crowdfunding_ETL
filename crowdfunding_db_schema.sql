-- Create Contacts Table
CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(250),
	last_name VARCHAR(250),
	email VARCHAR(250)
);

-- Create Category Table
CREATE TABLE category(
	category_id VARCHAR(250) PRIMARY KEY,
	category VARCHAR(250)
);

-- Create Subcategory Table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(250) PRIMARY KEY,
	subcategory VARCHAR(250)
);

-- Create Campaign Table
CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(250),
	description VARCHAR(250),
	goal REAL,
	pledged REAL,
	outcome VARCHAR(250),
	backers_count INT,
	country VARCHAR(250),
	currency VARCHAR(250),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(250),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(250),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Contacts: Confirm table correctly created; 
-- Import contacts.csv and Confirm data correctly imported
SELECT * FROM contacts;

-- Category: Confirm table correctly created
-- Import category.csv and Confirm data correctly imported
SELECT * FROM category;

-- Subcategory: Confirm table correctly created
-- Import subcategory.csv and Confirm data correctly imported
SELECT * FROM subcategory;

-- Campaign: Confirm table correctly created
-- Import campaign.csv and Confirm data correctly imported
SELECT * FROM campaign;