# ETL-Project
## Group 1: Eric Shaffer and Nick Hoyer

### Summary
In this repo we demonstrate ETL processing for 2 separate CSV files related to PGA Tour Statistics. Follow the instructions below to replicate the process our team has used to extract, transform, and load the data from our data sources into a common database and format.

#### Setup Instructions
1. Navigate to the [ETL Project Repo](https://github.com/NHoyer95/ETL-Project) and select the green "Code" dropdown
2. Copy the SSH Key to your clipboard
3. Open a Gitbash or Terminal from your desired file location and clone the repo using the git clone command, followed by the SSH Key from your clipboard - NOTE: Do not close this terminal

#### Create and Configure a PostrgeSQL DB
1. Open pgAdmin 4 from [PostgresQL 12 or later](https://www.postgresql.org/)
2. Create a new db named "pga_tour_stats_db"
3. Right-click the new database and open a Query Tool
4. In the Query Editor, click to the "Open File" button and navigate to the ETL Project Repo in your local drive
5. Select the "pga_database.sql" and run the create statements located in the file to create the 2 PGA Tour Stats tables
6. Run the first two `select * from` statements at the bottom of the sql query form to ensure that the tables have been created and the data types are reflected properly - NOTE: Do not close this pgAdmin session

#### Create the Required DataFrames and Populate the PostgreSQL DB using a Jupyter Notebook
1. From the Gitbash or Terminal session mentioned in step 2 of Setup, run `source activate PythonData` followed by `Jupyter Notebook` to launch a Jupyter session
2. 


