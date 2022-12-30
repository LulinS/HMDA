import sqlite3

con = sqlite3.connect("hmda.db")
cur = con.cursor()
obs = {}
for year in range(1990, 2022):
    sql = "SELECT COUNT(*) FROM lar_"+str(year)
    obs[year], = cur.execute(sql).fetchone()
    print(f"lar_{year} contains {obs[year]} observations")
con.close()




