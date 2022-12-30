DROP TABLE IF EXISTS panel_1993;
CREATE TABLE panel_1993 (
    respondent_id VARCHAR,
    msa VARCHAR,
    agency_code VARCHAR,
    agency_group_code VARCHAR,
    respondent_name VARCHAR,
    respondent_city VARCHAR,
    respondent_state VARCHAR,
    respondent_state_fips_number VARCHAR,
    assets VARCHAR,
    other_lender_code VARCHAR,
    parent_respondent_id VARCHAR,
    parent_name VARCHAR,
    parent_city VARCHAR,
    parent_state VARCHAR,
    activity_year VARCHAR);

CREATE TEMPORARY TABLE panel_load
  (PANEL VARCHAR); -- LAR contains an entire LAR record
.import 'data/panel/panel_1993.dat' panel_load

INSERT INTO panel_1993 (
    respondent_id,
    msa,
    agency_code,
    agency_group_code,
    respondent_name,
    respondent_city,
    respondent_state,
    respondent_state_fips_number,
    assets,
    other_lender_code,
    parent_respondent_id,
    parent_name,
    parent_city,
    parent_state,
    activity_year
    )
SELECT 
    SUBSTRING(PANEL, 1, 10),
    SUBSTRING(PANEL, 11, 4),
    SUBSTRING(PANEL, 15, 1),
    SUBSTRING(PANEL, 16, 2),
    SUBSTRING(PANEL, 18, 30),
    SUBSTRING(PANEL, 48, 25),
    SUBSTRING(PANEL, 73, 2),
    SUBSTRING(PANEL, 75, 2),
    SUBSTRING(PANEL, 77, 10),
    SUBSTRING(PANEL, 87, 1),
    SUBSTRING(PANEL, 88, 10),
    SUBSTRING(PANEL, 98, 30),
    SUBSTRING(PANEL, 128, 25),
    SUBSTRING(PANEL, 153, 2),
    SUBSTRING(PANEL, 155, 4)
FROM panel_load;
DROP TABLE IF EXISTS panel_load; 
