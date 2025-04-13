CREATE TABLE aggregated_data AS
SELECT 
    station_id,
    AVG(CASE WHEN datatype = 'TAVG' THEN value END) AS avg_temp,
    MIN(CASE WHEN datatype = 'TMIN' THEN value END) AS min_temp,
    MAX(CASE WHEN datatype = 'TMAX' THEN value END) AS max_temp
FROM 
    temperatures
GROUP BY 
    station_id;
