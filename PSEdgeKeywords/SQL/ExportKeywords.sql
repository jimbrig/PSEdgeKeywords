-- Dump the table's SQL INSERT Script
.output EdgeKeywords.sql
.dump keywords;

-- Dump the table as CSV
.headers on
.mode csv
.output EdgeKeywords.csv
SELECT * FROM keywords;

-- Quit SQLite
.quit

