-------------------------------------------------------------

-- CREATE KEYSPACE IF NOT EXISTS snaketours WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
-- -- AND durable_writes = 'false'; // increase the speed of write, also increase the risk of data loss
-- USE snaketours;

CREATE KEYSPACE IF NOT EXISTS snaketours
WITH replication = {'class' : 'SimpleStrategy', 'replication_factor': 3};
USE snaketours;
DROP TABLE IF EXISTS snaketours.tours;
CREATE TABLE snaketours.tours (
  id int,
  name text,
  overview text,
  cancellation_policy text,
  return_details text,
  created_at varchar,
  updated_at varchar,
  PRIMARY KEY((id), name, overview, cancellation_policy, return_details, created_at, updated_at)
);

DROP TABLE IF EXISTS snaketours.ToursAttractions;
CREATE TABLE snaketours.ToursAttractions (
  created_at varchar,
  updated_at varchar,
  attraction_id int,
  tour_id int,
  PRIMARY KEY((created_at), updated_at, attraction_id, tour_id)
);

DROP TABLE IF EXISTS snaketours.attractions;
CREATE TABLE snaketours.attractions (
  id int,
  name text,
  latitude float,
  longitude float,
  description text,
  rating float,
  image_path text,
  image_alt text,
  created_at varchar,
  updated_at varchar,
  PRIMARY KEY((id), name, latitude, longitude, description, rating, image_path, image_alt, created_at, updated_at)
);

COPY snaketours.tours FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/tours.csv' WITH DELIMITER=',' AND HEADER=TRUE;
COPY snaketours.attractions FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/attractions.csv' WITH DELIMITER=',' AND HEADER=TRUE;
COPY snaketours.toursattractions FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/ToursAttractions.csv' WITH DELIMITER=',' AND HEADER=TRUE;