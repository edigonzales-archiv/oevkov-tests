
CREATE TABLE ${schema_name}.gtfs_staging_stop (
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
);


CREATE TABLE ${schema_name}.gtfs_staging_stop_time (
	trip_id varchar(255) NOT NULL,
	arrival_time varchar(255) NOT NULL,
	departure_time varchar(255) NOT NULL,
	stop_id varchar(255) NOT NULL,
	stop_sequence varchar(255) NOT NULL,
	pickup_type varchar(255) NULL,
	drop_off_type varchar(255) NULL
)
WITH (
	OIDS=FALSE
);

CREATE INDEX gtfs_staging_stop_time_trip_id_idx
	ON ${schema_name}.gtfs_staging_stop_time (trip_id);

CREATE INDEX gtfs_staging_stop_time_stop_id_idx
	ON ${schema_name}.gtfs_staging_stop_time (stop_id);
