/******************************************************************************************************/
/***																								***/
/***	Author		: Ian Smith																		***/
/***	Date 		: 2018-08-23																	***/
/***	Title		: Import-CSV.sql																***/
/***																								***/
/***~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<.))><~~~~~~~~~~~~~~***/
/***																								***/
/***	Description	: This code is to import a CSV file in SQL Workbench/J in AWS Redshift.			***/
/***				  As part of importing a table you need to create a table to import into, this  ***/
/***				  also contains the code needed to generate the CREATE TABLE code automatically	***/
/***				  for you.																		***/
/***																								***/
/******************************************************************************************************/



/**  Step 1.1  : Have SQL Workbench generate the CREATE TABLE code for a CSV file  **/
WbGenerateImpTable 
	-type=text
    -file=/*Enter a directory location, the slashes between folders need to be forward slashes, and remember the .csv extention*/
    -delimiter=','
    -table=/*Enter a table name*/
;


/**  Step 1.2  : Run the CREATE TABLE code generated  **/

/*Paste the CREATE TABLE code generated in the messages window after running the code above*/


/**  Step 1.3  : Write the CSV data into the created table  **/
WbImport 
	-type=text
    -file=/*Enter the same directory as Step 1.1*/
    -delimiter=','
    -table=/*Enter the table name NB it MUST be all lower case!*/
;
