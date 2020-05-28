
CREATE KEYSPACE IF NOT EXISTS snaketours WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
-- AND durable_writes = 'false'; // increase the speed of write, also increase the risk of data loss

USE snaketours;

-- working follow..

CREATE TABLE tours (
    tourId int,
    attractionId int,
    name text,
    overview text,
    cancellation_policy text,
    return_details text,
    PRIMARY KEY(tourId),
)WITH CLUSTERING ORDER BY (tourId ASC);

CREATE TABLE ToursAttractions (
    attractionId int,
    tourId int,
    name text,
    latitude int,
    longitude int,
    description text,
    rating int,
    attraction_url varchar,
    image_path text,
    image_alt text,
    startTime int, 
    duration int,
    admissionPrice int,
    admissionNote text,
    PRIMARY KEY(tourId,startTime), 
) WITH CLUSTERING ORDER BY (startTime ASC);

CREATE TABLE attractions (
    attractionId int,
    name text,
    latitude int,
    longitude int,
    description text,
    rating int,
    attraction_url varchar,
    image_path text,
    image_alt text,
    PRIMARY KEY(attractionId)
);

-- CREATE TABLE tour ( --fix
--     tourId int,
--     attractionId int,
--     name text,
--     overview text,
--     cancellation_policy text,
--     return_details text,
--     PRIMARY KEY(tourId)
--     -- tourId should be unique and attractionId can be many =>(partition key)?
-- )
-- -- WITH CLUSTERING ORDER BY (tourId ASC);
-- -- //the order on which data is stored


-- CREATE TABLE attractionsbytour (
--     attractionId int,
--     tourId int;
--     name text,
--     latitude int,
--     longitude int,
--     description text,
--     rating int,
--     attraction_url varchar,
--     image_path text,
--     image_alt text,
--     startTime int, --google 
--     duration int,
--     admissionPrice int,
--     admissionNote text,
--     PRIMARY KEY(tourId,startTime) --add startTime
-- ) WITH CLUSTERING ORDER BY (startTime ASC);
-- -- //the order on which data is stored

-- CREATE TABLE attractions (
--     attractionId int,
--     name text,
--     latitude int,
--     longitude int,
--     description text,
--     rating int,
--     attraction_url varchar,
--     image_path text,
--     image_alt text,
--     PRIMARY KEY(attractionId)
-- )


-- -- CREATE TABLE toursAttractions (
-- --     stopIndex int,
-- --     duration int,
-- --     admissionPrice int,
-- --     admissionNote text,
-- --     PRIMARY KEY(attractionId DESC, tourId DESC)
-- -- )
-- -------------------------------------------------



CREATE TABLE tour (
    tourId int,
    name text,
    overview text,
    cancellation_policy text,
    return_details text,
    PRIMARY KEY(tourId)
)WITH CLUSTERING ORDER BY (tourId ASC);