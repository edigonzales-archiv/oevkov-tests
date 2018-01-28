/*
SELECT
  count(*)
FROM
  avt_oevkov_test.gtfs_staging_stop_time;
*/ 

SELECT
  *
FROM
  avt_oevkov_test.gtfs_staging_stop AS stop
  LEFT JOIN avt_oevkov_test.gtfs_staging_stop_time AS stop_time
  ON stop.stop_id = stop_time.stop_id
  
  
LIMIT 10;