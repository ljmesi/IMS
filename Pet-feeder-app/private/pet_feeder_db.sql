CREATE database Pet_feeder;
USE Pet_feeder;

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
    pet_weight FLOAT(10 , 7 ) UNSIGNED NOT NULL,
    food_amount FLOAT(10 , 7 ) UNSIGNED NOT NULL,
    historical_date DATE,
    PRIMARY KEY (owner_id , pet_id),
    FOREIGN KEY (owner_id)
        REFERENCES Owner (oID),
    FOREIGN KEY (pet_id)
        REFERENCES Owner (pet_id)
);

DROP TABLE IF EXISTS diet ;
CREATE TABLE diet (
    diet_name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS health ;
CREATE TABLE health (
    hID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    health_name VARCHAR(255) NOT NULL
);

drop table if exists tags;
CREATE TABLE tags (
    tagID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(45) NOT NULL
)  AUTO_INCREMENT=1001;

DROP TABLE IF EXISTS dog_breed ;
CREATE TABLE dog_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT UNSIGNED,
    male_high_base INT UNSIGNED NOT NULL,
    female_low_base INT UNSIGNED,
    female_high_base INT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS cat_breed ;
CREATE TABLE cat_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT UNSIGNED,
    male_high_base INT UNSIGNED NOT NULL,
    female_low_base INT UNSIGNED,
    female_high_base INT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS lifestyle ;
CREATE TABLE lifestyle (
    lifeID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    activity_level VARCHAR(45) NOT NULL
);

drop table if exists age;
CREATE TABLE age (
    ageID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    a_low FLOAT(10 , 7 ) UNSIGNED NULL,
    a_high FLOAT(10 , 7 ) UNSIGNED NULL,
    a_category VARCHAR(45) NOT NULL,
    age_multi FLOAT(10 , 7 ) UNSIGNED
)  AUTO_INCREMENT=2001;
