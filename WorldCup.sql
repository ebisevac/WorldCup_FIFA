CREATE TABLE countries_new(
	country VARCHAR NOT NULL PRIMARY KEY,
	population_share FLOAT,
	gdp_weighted_share FLOAT);
			

	
CREATE TABLE new_wc(
	country VARCHAR NOT NULL PRIMARY KEY,
	winner float,
	runner_up float,
	third float,
	FOREIGN KEY (country) REFERENCES countries_new(country)
);

select countries_new.country, countries_new.population_share, countries_new.gdp_weighted_share, new_wc.winner , new_wc.runner_up , new_wc.third
from countries_new
inner join new_wc on countries_new.country=new_wc.country

