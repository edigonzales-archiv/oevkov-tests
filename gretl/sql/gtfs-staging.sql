CREATE TABLE avt_oevkov_test.gtfs_staging_stop (
	stop_id varchar(255) NOT NULL,
	stop_name varchar(1024) NOT NULL,
	stop_lat varchar(255) NOT NULL,
	stop_lon varchar(255) NOT NULL,
	location_type varchar(255) NULL,
	parent_station varchar(255) NULL,
	PRIMARY KEY (stop_id)
)
WITH (
	OIDS=FALSE
) ;