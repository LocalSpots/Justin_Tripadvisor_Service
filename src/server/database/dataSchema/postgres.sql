-- DROP DATABASE IF EXISTS snaketours;

-- CREATE DATABASE snaketours;

-- \c snaketours;


-- CREATE TABLE attractions (
--     attraction_id SERIAL PRIMARY KEY,
--     attractionsName varchar(255),
--     latitude varchar(255),
--     longitude varchar(255),
--     descrip varchar(255),
--     rating varchar(255),
--     attraction_url varchar(255),
--     image_path varchar(255),
--     image_alt varchar(255)
-- );


-- CREATE TABLE tours(
--     tours_id SERIAL PRIMARY KEY,
--     toursName varchar(500),
--     overview varchar(900),
--     cancellation_policy varchar(500),
--     return_details varchar(500),
--     created_at varchar(255),
--     updated_at varchar(255)
-- );




-- COPY tours
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/tours.csv'
-- DELIMITER ',' CSV HEADER;

-- COPY attractions
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/attractions.csv'
-- DELIMITER ',' CSV HEADER;

-- COPY "ToursAttractions"
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/ToursAttractions.csv'
-- DELIMITER ',' CSV HEADER;



-- CREATE TABLE tours(
--     id SERIAL PRIMARY KEY,
--     name varchar(500),
--     overview varchar(900),
--     cancellation_policy varchar(500),
--     return_details varchar(500),
--     created_at varchar(255),
--     updated_at varchar(255)
-- );


-- CREATE TABLE attractions (
--     id SERIAL PRIMARY KEY,
--     name varchar(500),
--     latitude varchar(900),
--     longitude varchar(900),
--     description varchar(900),
--     rating varchar(500),
--     image_path varchar(255),
--     image_alt varchar(255)
-- );



-- ALTER TABLE tours
-- DROP COLUMN IF EXISTS created_at;
-- ALTER TABLE tours
-- DROP COLUMN IF EXISTS updated_at;


-- ALTER TABLE tours
-- ADD COLUMN created_at varchar(255);
-- ALTER TABLE tours
-- ADD COLUMN updated_at varchar(255);


-- ALTER TABLE attractions
-- DROP COLUMN IF EXISTS created_at;
-- ALTER TABLE attractions
-- DROP COLUMN IF EXISTS updated_at;

-- ALTER TABLE attractions
-- ADD COLUMN created_at varchar(255);
-- ALTER TABLE attractions
-- ADD COLUMN updated_at varchar(255);


--------------------------------------------------------------------
-- ALTER TABLE "ToursAttractions"
-- DROP COLUMN IF EXISTS created_at;
-- ALTER TABLE "ToursAttractions"
-- DROP COLUMN IF EXISTS updated_at;

-- ALTER TABLE "ToursAttractions"
-- ADD COLUMN created_at varchar(255);
-- ALTER TABLE "ToursAttractions"
-- ADD COLUMN updated_at varchar(255);



-- ALTER TABLE "ToursAttractions"
-- DROP COLUMN IF EXISTS attraction_id;
-- ALTER TABLE "ToursAttractions"
-- DROP COLUMN IF EXISTS tour_id;


-- ALTER TABLE "ToursAttractions" ADD COLUMN attraction_id INTEGER;
-- ALTER TABLE "ToursAttractions" ADD COLUMN tour_id INTEGER;
-- ALTER TABLE "ToursAttractions" ADD FOREIGN KEY (attraction_id) references attractions(attraction_id);

-- ALTER TABLE "ToursAttractions" ADD CONSTRAINT attraction_id FOREIGN KEY (attraction_id) references attractions(attraction_id);



-- ALTER TABLE "ToursAttractions"
-- ADD COLUMN attraction_id varchar(80) references attractions(attraction_id);
-- ALTER TABLE "ToursAttractions"
-- ADD COLUMN tour_id varchar(80) references tours(tour_id);

-- ALTER TABLE tours
-- DROP COLUMN IF EXISTS created_at;
-- ALTER TABLE tours
-- DROP COLUMN IF EXISTS updated_at;


-- ALTER TABLE tours
-- ADD COLUMN created_at varchar(255);
-- ALTER TABLE tours
-- ADD COLUMN updated_at varchar(255);


-- ALTER TABLE attractions
-- DROP COLUMN IF EXISTS created_at;
-- ALTER TABLE attractions
-- DROP COLUMN IF EXISTS updated_at;

-- ALTER TABLE attractions
-- ADD COLUMN created_at varchar(255);
-- ALTER TABLE attractions
-- ADD COLUMN updated_at varchar(255);
--------------------------------------------
-- DROP TABLE "tours";

-- CREATE TABLE tours(
--     id SERIAL PRIMARY KEY,
--     name varchar(500),
--     overview varchar(900),
--     cancellation_policy varchar(500),
--     return_details varchar(500),
--     created_at varchar(255),
--     updated_at varchar(255)
-- );


-- DROP TABLE "attractions";

-- CREATE TABLE attractions (
--     id SERIAL PRIMARY KEY,
--     name varchar(500),
--     latitude varchar(900),
--     longitude varchar(900),
--     description varchar(900),
--     rating varchar(500),
--     image_path varchar(255),
--     image_alt varchar(255),
--     created_at varchar(255),
--     updated_at varchar(255)
-- );

 
-- DROP TABLE "ToursAttractions";

-- CREATE TABLE "ToursAttractions" (
--     created_at varchar(255),
--     updated_at varchar(255),
--     attraction_id SERIAL,
--     tour_id SERIAL
-- );



-- COPY tours
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/tours.csv'
-- DELIMITER ',' CSV HEADER;

-- COPY attractions
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/attractions.csv'
-- DELIMITER ',' CSV HEADER;

-- COPY "ToursAttractions"
-- FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/ToursAttractions.csv'
-- DELIMITER ',' CSV HEADER;


------------------------------

DROP DATABASE IF EXISTS snaketours;
CREATE DATABASE snaketours;
\c snaketours;
DROP TABLE IF EXISTS "tours";
CREATE TABLE tours(
    id SERIAL PRIMARY KEY,
    name varchar(500),
    overview varchar(900),
    cancellation_policy varchar(500),
    return_details varchar(500),
    created_at varchar(255),
    updated_at varchar(255)
);
DROP TABLE IF EXISTS "attractions";
CREATE TABLE attractions (
    id SERIAL PRIMARY KEY,
    name varchar(500),
    latitude varchar(900),
    longitude varchar(900),
    description varchar(900),
    rating varchar(500),
    image_path varchar(255),
    image_alt varchar(255),
    created_at varchar(255),
    updated_at varchar(255)
);
DROP TABLE IF EXISTS "ToursAttractions";
CREATE TABLE "ToursAttractions" (
    created_at varchar(255),
    updated_at varchar(255),
    attraction_id SERIAL,
    tour_id SERIAL
);
COPY tours
FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/tours.csv'
DELIMITER ',' CSV HEADER;

COPY attractions
FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/attractions.csv'
DELIMITER ',' CSV HEADER;

COPY "ToursAttractions"
FROM '/Users/justinguan/Desktop/HR/HRSF127/projects/SDC/Justin_Tripadvisor_Service/ToursAttractions.csv'
DELIMITER ',' CSV HEADER;
