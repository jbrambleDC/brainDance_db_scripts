INSERT INTO trailio_location (loc_name, country_name, lat, lon, weather, region_name)
SELECT city, country_name, latitude, longitude, 'MILD', region from tt_cities where population != 0;
