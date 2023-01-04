#!/bin/bash

# download data
bash ../download_scripts/download_hmda.sh
bash ../download_scripts/census.sh

# unzip data
bash ../download_scripts/unzip_lar.sh
bash ../download_scripts/rename_lar.sh
bash ../download_scripts/unzip_ts.sh
bash ../download_scripts/unzip_ts.sh

# load data
bash ../load_scripts/load_lar.sh
bash ../load_scripts/load_panel.sh
bash ../load_scripts/load_ts.sh
bash ../load_scripts/load_census.sh
