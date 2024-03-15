# Crowdfunding_ETL
Project 2 for Data Analytics Class

In order to run the Jupyter Notebook file, all xlsx files must be in the Resources folder.

## Part 1: Crowdfunding Data Extraction
The ETL_Mini_Project_JUpright_BStephenson.ipynb file is set up to imported data from the crowdfunding.xlsx and contacts.xlsx folders.  The Jupyter Notebook file then creates multiple dataframes to be exported to csv files which will be used to create a Crowdfunding Database in PostGres.

## Part 2: Database Creation
The crowdfunding_db_schema.sql file is used to create a database from the previously created csv files.  

Run the CREATE TABLE code in the order that the code is written.

From there, import the data from the CSV files into the database tables in the same order that the tables were created.