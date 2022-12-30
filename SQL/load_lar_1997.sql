DROP TABLE IF EXISTS lar_1997;
CREATE TABLE lar_1997(
    activity_year VARCHAR,
    respondent_id VARCHAR,
    agency_code VARCHAR,
    loan_type VARCHAR,
    loan_purpose VARCHAR,
    occupancy_type VARCHAR,
    loan_amount VARCHAR,
    action_taken VARCHAR,
    msa_md VARCHAR,
    state_code VARCHAR,
    county_code VARCHAR,
    census_tract VARCHAR,
    applicant_race VARCHAR,
    co_applicant_race VARCHAR,
    applicant_sex VARCHAR,
    co_applicant_sex VARCHAR,
    income VARCHAR,
    purchaser_type VARCHAR,
    denial_reason_1 VARCHAR,
    denial_reason_2 VARCHAR,
    denial_reason_3 VARCHAR,
    edit_status VARCHAR,
    sequence_number VARCHAR
);

CREATE TEMPORARY TABLE lar_load (LAR VARCHAR); -- LAR contains an entire LAR record
.import 'data/lar/lar_1997.dat' lar_load

INSERT INTO lar_1997 (
    activity_year,
    respondent_id,
    agency_code,
    loan_type,
    loan_purpose,
    occupancy_type,
    loan_amount,
    action_taken,
    msa_md,
    state_code,
    county_code,
    census_tract,
    applicant_race,
    co_applicant_race,
    applicant_sex,
    co_applicant_sex,
    income,
    purchaser_type,
    denial_reason_1,
    denial_reason_2,
    denial_reason_3,
    edit_status,
    sequence_number
)
SELECT
SUBSTRING(LAR, 1,4),
SUBSTRING(LAR, 5,10),
SUBSTRING(LAR, 15,1),
SUBSTRING(LAR, 16,1),
SUBSTRING(LAR, 17,1),
SUBSTRING(LAR, 18,1),
SUBSTRING(LAR, 19,5),
SUBSTRING(LAR, 24,1),
SUBSTRING(LAR, 25,4),
SUBSTRING(LAR, 29,2),
SUBSTRING(LAR, 31,3),
SUBSTRING(LAR, 34,7),
SUBSTRING(LAR, 41,1),
SUBSTRING(LAR, 42,1),
SUBSTRING(LAR, 43,1),
SUBSTRING(LAR, 44,1),
SUBSTRING(LAR, 45,4),
SUBSTRING(LAR, 49,1),
SUBSTRING(LAR, 50,1),
SUBSTRING(LAR, 51,1),
SUBSTRING(LAR, 52,1),
SUBSTRING(LAR, 53,1),
SUBSTRING(LAR, 54,7)
FROM lar_load;

DROP TABLE IF EXISTS lar_load;
