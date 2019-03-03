SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

DROP TABLE IF EXISTS Pet;
CREATE TABLE Pet (
    pID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_of_pet VARCHAR(255) NOT NULL,
    food_rec VARCHAR(255) NOT NULL,
    food_amount VARCHAR(255) NOT NULL
);

Drop table if exists Owner;
CREATE TABLE Owner (
    oID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pet_id INT(11) NOT NULL,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (pet_id)
        REFERENCES Pet (pID)
);


DROP TABLE IF EXISTS Historical_data;
CREATE TABLE Historical_data (
    owner_id INT(11) NOT NULL,
    pet_id INT(11) NOT NULL,
    pet_weight VARCHAR(45) NOT NULL,
    food_amount VARCHAR(255) NOT NULL,
    PRIMARY KEY (owner_id , pet_id),
    FOREIGN KEY (owner_id)
        REFERENCES Owner (oID),
    FOREIGN KEY (pet_id)
        REFERENCES Owner (pet_id)
);

DROP TABLE IF EXISTS diet ;
CREATE TABLE diet (
    dID INT(11) AUTO_INCREMENT PRIMARY KEY,
    diet_name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS health ;
CREATE TABLE health (
    hID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    health_name VARCHAR(255) NOT NULL
);

drop table if exists tags;
CREATE TABLE tags (
    tagID VARCHAR(10) NOT NULL PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL
);

drop table if exists diet_health;
CREATE TABLE diet_health (
    diet_id VARCHAR(10) NOT NULL,
    health_id VARCHAR(10) NOT NULL,
    food_amount INT
);

DROP TABLE IF EXISTS dog_breed ;
CREATE TABLE dog_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT,
    male_high_base INT NOT NULL,
    female_low_base INT,
    female_high_base INT NOT NULL
);

DROP TABLE IF EXISTS cat_breed ;
CREATE TABLE cat_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT,
    male_high_base INT NOT NULL,
    female_low_base INT,
    female_high_base INT NOT NULL
);

DROP TABLE IF EXISTS lifestyle ;
CREATE TABLE lifestyle (
    lifeID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    low_activity DECIMAL NOT NULL,
    normal_activity DECIMAL,
    high_activity DECIMAL NOT NULL
);

DROP TABLE if exists age;
CREATE TABLE age (
    aID VARCHAR(15) NOT NULL PRIMARY KEY,
    a_low DECIMAL NOT NULL,
    a_high DECIMAL NOT NULL,
    a_category VARCHAR(45) NOT NULL,
    age_multi DECIMAL NOT NULL
);

insert into health
(health_name)
VALUES 
("Kidney disease"),
("Pregnant"),
("Nursing"),
("Heart condition"),
("Joint issues"),
("Overweight"),
("Underweight");

insert into diet
(diet_name)
VALUES
("raw"),
("raw grain free"),
("raw limited"),
("dry"),
("dry grain free"),
("dry limited"),
("wet"),
("wet grain free"),
("wet limited");

Insert into tags
VALUES
(uuid(), "raw"),
(uuid(), "grain free"),
(uuid(), "dry"),
(uuid(), "phosphorous"),
(uuid(), "kidney"),
(uuid(), "toy"),
(uuid(), "weight"),
(uuid(), "high protein"),
(uuid(), "heart"),
(uuid(), "small breed"),
(uuid(), "adult"),
(uuid(), "puppy"),
(uuid(), "senior"),
(uuid(), "cat"),
(uuid(), "dog"),
(uuid(), "wet"),
(uuid(), "kitten"),
(uuid(), "cat"),
(uuid(), "joint"),
(uuid(), "large breed"),
(uuid(), "pregnant"),
(uuid(), "nursing");

ALTER TABLE diet ADD COLUMN tag_id VARCHAR(10) NOT NULL, 
    ADD FOREIGN KEY (tag_id) REFERENCES tags(tagID);

UPDATE diet
        JOIN
    tags ON diet.diet_name LIKE CONCAT('%', tags.tag_name, '%') 
SET 
    diet.tag_id = tags.tagID;
    
ALTER TABLE health ADD COLUMN tag_id VARCHAR(10) NOT NULL, 
    ADD FOREIGN KEY (tag_id) REFERENCES tags(tagID);

UPDATE health
        JOIN
    tags ON health.health_name LIKE CONCAT('%', tags.tag_name, '%') 
SET 
    health.tag_id = tags.tagID;    