drop table if exists tt_country_codes;
create table tt_country_codes(
  country_name varchar(100),
  country_code varchar(2)
);
load data local infile '~/country_code.txt' into table tt_country_codes
fields terminated by '\t';

update tt_cities tt join tt_country_codes tt2 on tt1.country_code = tt2.country_code set tt1.country_name = tt2.country_name;
