DROP TABLE IF EXISTS ts_2016;
CREATE TABLE ts_2016(
	activity_year VARCHAR,
	respondent_id VARCHAR,
	agency_code VARCHAR,
	tax_id VARCHAR,
	respondent_name VARCHAR,
	respondent_address VARCHAR,
	respondent_city VARCHAR,
	respondent_state VARCHAR,
	respondent_zip_code VARCHAR,
	parent_name VARCHAR,
	parent_address VARCHAR,
	parent_city VARCHAR,
	parent_state VARCHAR,
	parent_zip_code VARCHAR,
	respondent_name_panel VARCHAR,
	respondent_city_panel VARCHAR,
	respondent_state_panel VARCHAR,
	assets_panel VARCHAR,
	olc_panel VARCHAR,
	region_code_panel VARCHAR,
	lar_count VARCHAR,
	edit_status VARCHAR
);

.mod tabs
.import 'data/ts/ts_2016_fixed.txt' ts_2016
