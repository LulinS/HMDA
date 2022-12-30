DROP TABLE IF EXISTS ts_2002;
CREATE TABLE ts_2002 (
	activity_year VARCHAR,
	agency_code VARCHAR,
	respondent_id VARCHAR,
	respondent_name VARCHAR,
	respondent_address VARCHAR,
	respondent_city VARCHAR,
	respondent_state VARCHAR,
	respondent_zip_code VARCHAR,
	edit_status VARCHAR,
    tax_id VARCHAR);

CREATE TEMPORARY TABLE ts_load 
  (TS VARCHAR) ; -- TS contains an entire TS record per row
.separator ~
.import 'data/ts/ts_2002.dat' ts_load

INSERT INTO ts_2002 (
	activity_year,
	agency_code,
	respondent_id,
	respondent_name,
	respondent_address,
	respondent_city,
	respondent_state,
	respondent_zip_code,
	edit_status,
    tax_id
	)

SELECT 
	SUBSTRING(TS, 1, 4),
	SUBSTRING(TS, 5, 1),
	SUBSTRING(TS, 6, 10),
	SUBSTRING(TS, 16, 30),
	SUBSTRING(TS, 46, 40),
	SUBSTRING(TS, 86, 25),
	SUBSTRING(TS, 111,2),
	SUBSTRING(TS, 113, 10),
	SUBSTRING(TS, 123, 1),
	SUBSTRING(TS, 124, 10)	
FROM ts_load;
DROP TABLE IF EXISTS ts_load; 

