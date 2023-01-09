#!/bin/bash

for year in {1990..2013}
do 
sqlite3 hmda.db << EOF
DROP TABLE IF EXISTS lar_census_${year};
CREATE TABLE  lar_census_${year} AS
SELECT * FROM 
    (SELECT *,
        (state_code || county_code || SUBSTR(census_tract, 1, 4) || SUBSTR(census_tract, 6, 2)) as tract_id 
    FROM lar_${year} ) AS a LEFT JOIN
    (SELECT (state_code || county_code || census_tract) AS tract_id,
        ffiec_msa_md_median_family_income, tract_population, tract_minority_population_percent,
        tract_owner_occupied_units, tract_one_to_four_family_units, tract_median_family_income,
        tract_to_msa_income_percentage, tract_median_age_of_housing_units, small_county
    FROM census_${year}) AS b
ON a.tract_id = b.tract_id;
EOF
echo "finish combining data of year " ${year}
done