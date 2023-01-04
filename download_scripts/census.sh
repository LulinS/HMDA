#!/bin/bash

# create directory to store census data
echo "making data storage directories"
mkdir data/census

# copy data from hmda-census to directory
for year in {1990..2021}
do 
    cp ../hmda-census/output/census_data_extract_${year}.txt data/census/census_${year}.txt
done