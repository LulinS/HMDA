#!/bin/bash
sqlite3 hmda.db < SQL/load_ts_1990.sql
echo 'finish ts 1990'
sqlite3 hmda.db < SQL/load_ts_1991.sql
echo 'finish ts 1991'
sqlite3 hmda.db < SQL/load_ts_1992.sql
echo 'finish ts 1992'
sqlite3 hmda.db < SQL/load_ts_1993.sql
echo 'finish ts 1993'
sqlite3 hmda.db < SQL/load_ts_1994.sql
echo 'finish ts 1994'
sqlite3 hmda.db < SQL/load_ts_1995.sql
echo 'finish ts 1995'
sqlite3 hmda.db < SQL/load_ts_1996.sql
echo 'finish ts 1996'
sqlite3 hmda.db < SQL/load_ts_1997.sql
echo 'finish ts 1997'
sqlite3 hmda.db < SQL/load_ts_1998.sql
echo 'finish ts 1998'
sqlite3 hmda.db < SQL/load_ts_1999.sql
echo 'finish ts 1999'
sqlite3 hmda.db < SQL/load_ts_2000.sql
echo 'finish ts 2000'
sqlite3 hmda.db < SQL/load_ts_2001.sql
echo 'finish ts 2001'
sqlite3 hmda.db < SQL/load_ts_2002.sql
echo 'finish ts 2002'
sqlite3 hmda.db < SQL/load_ts_2003.sql
echo 'finish ts 2003'
sqlite3 hmda.db < SQL/load_ts_2004.sql
echo 'finish ts 2004'
sqlite3 hmda.db < SQL/load_ts_2005.sql
echo 'finish ts 2005'
sqlite3 hmda.db < SQL/load_ts_2006.sql
echo 'finish ts 2006'
sqlite3 hmda.db < SQL/load_ts_2007.sql
echo 'finish ts 2007'
sqlite3 hmda.db < SQL/load_ts_2008.sql
echo 'finish ts 2008'
sqlite3 hmda.db < SQL/load_ts_2009.sql
echo 'finish ts 2009'
sqlite3 hmda.db < SQL/load_ts_2010.sql
echo 'finish ts 2010'
sqlite3 hmda.db < SQL/load_ts_2011.sql
echo 'finish ts 2011'
sqlite3 hmda.db < SQL/load_ts_2012.sql
echo 'finish ts 2012'
sqlite3 hmda.db < SQL/load_ts_2013.sql
echo 'finish ts 2013'
sqlite3 hmda.db < SQL/load_ts_2014.sql
echo 'finish ts 2014'
sqlite3 hmda.db < SQL/load_ts_2015.sql
echo 'finish ts 2015'
python remove_tab_ts_2016.py
echo 'edited errors in ts_2016 file'
sqlite3 hmda.db < SQL/load_ts_2016.sql
echo 'finish ts 2016'
sqlite3 hmda.db < SQL/load_ts_2017.sql
echo 'finish ts 2017'
sqlite3 hmda.db < SQL/load_ts_2018.sql
echo 'finish ts 2018'
sqlite3 hmda.db < SQL/load_ts_2019.sql
echo 'finish ts 2019'
sqlite3 hmda.db < SQL/load_ts_2020.sql
echo 'finish ts 2020'
sqlite3 hmda.db < SQL/load_ts_2021.sql
echo 'finish ts 2021'