drop table if exists tt_cities;
CREATE TABLE tt_cities(
  country_name varchar(100) default 'N/A',
  country_code varchar(2),
  city varchar(40),
  region varchar(5),
  population int(15),
  latitude float(10),
  longitude float(10)
);
load data local infile '~/worldcitiespop.txt' into table tt_cities
fields terminated by ','
ignore 1 lines
(country_code, city, @dummy1, region, population, latitude, longitude);
