# ETL-Project
## Group 1: Eric Shaffer and Nick Hoyer

### Summary
In this repo we demonstrate ETL processing for 2 separate CSV files related to PGA Tour Statistics. Our ETL Process includes the following steps:
* **Extract** - Using CSVs sourced from [Kaggle](https://www.kaggle.com/datasets) we extracted PGA Tour Stats and loaded them into Pandas DataFrames for transformation
* **Transform** - With the data loaded into DataFrames, we dropped unwanted columns and dropped any rows that had null values. We then formatted the column titles to be consistent across years 2017 and 2018 and made sure that data types were appropriate for the values in the columns.
* **Load** - The data was loaded into a database created in PostgreSQL. This was done from a Jupyter Notebook using a SQL Database Connection Engine. 

Follow the instructions below to replicate the process our team has used to extract, transform, and load the data from our data sources into a common database with a consistent format fit for analysis.

#### Setup Instructions
1. Navigate to the [ETL Project Repo](https://github.com/NHoyer95/ETL-Project) and select the green "Code" dropdown
2. Copy the SSH Key to your clipboard
3. Open a Gitbash or Terminal from your desired file location and clone the repo using the git clone command, followed by the SSH Key from your clipboard - NOTE: Do not close this terminal

#### Create and Configure a PostrgeSQL DB
1. Open pgAdmin 4 from [PostgreSQL 12 or later](https://www.postgresql.org/)
2. Create a new db named "pga_tour_stats_db" with Postgres as the user
3. Right-click the new database and open a Query Tool
4. In the Query Editor, click to the "Open File" button and navigate to the ETL Project Repo in your local drive
5. Select the "pga_database.sql" file and run the create statements located in the file to create the 2 PGA Tour Stats tables
6. Run the first two `select * from` statements at the bottom of the SQL query form to ensure that the tables have been created and the data types are reflected properly - NOTE: Do not close this pgAdmin session

#### Create the Required DataFrames and Populate the PostgreSQL DB using a Jupyter Notebook
1. From the Gitbash or Terminal session mentioned in step 3 of Setup Instructions, run `source activate PythonData` followed by `jupyter notebook` to launch a Jupyter session
2. Create a new config.py file to store your credentials by selecting "New > Text File" in the upper right hand corner of the page
3. Rename the Text File to "config.py" and enter your password into the body of the file with the format `password = "enter your password here"` then save the config.py file
4. Open the `pga_etl.ipynb` file and select "Kernel > Restart & Run All" to extract the data from the CSV files into DataFrames, transform the data into the appropriate format, and load it into the corresponding PostgreSQL tables that were created in earlier steps

#### Confirm that ETL Worked as Expected
1. Navigate back to the pgAdmin session that should still be running
2. Run the `join` statement at the bottom of the SQL query form
3. Notice that stats from the 2017 PGA Tour and 2018 PGA Tour have been properly loaded into the corresponding tables in the PostgreSQL DB and are available for analysis



