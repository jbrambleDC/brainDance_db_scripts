drop table if exists tt_cities;
CREATE TABLE tt_cities(
  country_code varchar(2),
  city varchar(40),
  region varchar(5),
  latitude float(10),
  longitude float(10)
);
load data local infile '~/worldcitiespop.txt' into table tt_cities
fields terminated by ','
ignore 1 lines
(country_code, city, @dummy1, region, @dummy2, latitude, longitude);
