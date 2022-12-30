DROP TABLE IF EXISTS panel_2017;
CREATE TABLE panel_2017 (
	activity_year VARCHAR,
	respondent_id VARCHAR,
	agency_code VARCHAR,
	parent_respondent_id VARCHAR,
	parent_name VARCHAR,
	parent_city VARCHAR,
	parent_state VARCHAR,
	region VARCHAR,
	assets VARCHAR,
	other_lender_code VARCHAR,
	respondent_name VARCHAR,
	respondent_city VARCHAR,
	respondent_state VARCHAR,
	top_holder_rssd VARCHAR,
	top_holder_name VARCHAR,
	top_holder_city VARCHAR,
	top_holder_state VARCHAR,
	top_holder_country VARCHAR,
	respondent_rssd VARCHAR,
	parent_rssd VARCHAR,
	respondent_state_fips_number VARCHAR);

.import --csv 'data/panel/panel_2017.txt' panel_2017
DELETE FROM panel_2017 WHERE activity_year IS NULL or trim(activity_year) = '';