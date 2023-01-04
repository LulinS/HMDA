#!/bin/bash

for year in {1990..2021}
do 
sqlite3 hmda.db << EOF
DROP TABLE IF EXISTS census_${year};
CREATE TABLE census_${year} (
    activity_year TEXT,
    msa_md TEXT,
    state_code TEXT,
    county_code TEXT,
    census_tract TEXT,
    ffiec_msa_md_median_family_income TEXT,
    tract_population TEXT,
    tract_minority_population_percent TEXT,
    tract_owner_occupied_units TEXT,
    tract_one_to_four_family_units TEXT,
    tract_median_family_income TEXT,
    tract_to_msa_income_percentage TEXT,
    tract_median_age_of_housing_units TEXT,
    small_county TEXT
);
.import data/census/census_${year}.txt census_${year}
DELETE FROM census_${year} WHERE rowid==1;
EOF
echo 'finish census '${year}
done
