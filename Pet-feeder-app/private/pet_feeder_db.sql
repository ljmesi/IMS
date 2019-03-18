CREATE database Pet_feeder;
USE Pet_feeder;

SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

drop table if exists Pet;
CREATE TABLE Pet (
    pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_of_pet VARCHAR(255) NOT NULL,
    food_rec VARCHAR(255) NOT NULL,
    food_amount FLOAT(10,7) UNSIGNED NOT NULL
)  AUTO_INCREMENT=5001;

drop table if exists pet_owner;
CREATE TABLE pet_owner (
    oID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pet_id INT default '0',
    email VARCHAR(45) NOT NULL,
    own_password VARCHAR(255) NOT NULL,
     FOREIGN KEY (pet_id)
        REFERENCES Pet (pID)
)  AUTO_INCREMENT=4001;

DROP TABLE IF EXISTS Historical_data;
CREATE TABLE Historical_data (
    owner_id INT,
    pet_id INT,
    pet_weight FLOAT(10 , 7 ) UNSIGNED NOT NULL,
    food_amount FLOAT(10 , 7 ) UNSIGNED NOT NULL,
    historical_date DATE,
    PRIMARY KEY (owner_id , pet_id),
    FOREIGN KEY (owner_id)
        REFERENCES pet_owner (oID),
    FOREIGN KEY (pet_id)
        REFERENCES pet_owner (pet_id)
);

DROP table if exists diet;
CREATE TABLE diet (
    dID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    diet_name VARCHAR(255) NOT NULL
)  AUTO_INCREMENT=2001;

drop table if exists health;
CREATE TABLE health (
    hID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    health_name VARCHAR(45) NOT NULL,
    active FLOAT(10 , 7 ),
    inactive FLOAT(10 , 7 )
)  AUTO_INCREMENT=3001;

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
    female_high_base INT UNSIGNED NOT NULL,
    size VARCHAR(45) NOT NULL 
);
DROP TABLE IF EXISTS dog_adult_diet ;
CREATE TABLE dog_adult_diet (
    size VARCHAR(255) NOT NULL,
    body_weight BIGINT,
    High_activity FLOAT(10 , 9 ),
    Normal_activity FLOAT(10 , 9 ),
    Low_activity FLOAT(10 , 9 ),
    Diet VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS dog_pup_diet ;
CREATE TABLE dog_pup_diet (
    size VARCHAR(255) NOT NULL,
    body_weight BIGINT,
    Age_2mo FLOAT(10 , 7 ),
    Age_3_6mo FLOAT(10 , 7 ),
    Age6_12mo FLOAT(10 , 7 ),
    Age_12_more FLOAT(10 , 7 ),
    Diet VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS dog_senior_diet ;
CREATE TABLE dog_senior_diet (
    size VARCHAR(255) NOT NULL,
    body_weight BIGINT,
    Low_activity FLOAT(10 , 9 ),
    Diet VARCHAR(255) NOT NULL,
    Normal_activity FLOAT(10 , 9),
    High_activity FLOAT(10 , 9)
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

DROP TABLE IF EXISTS diet_tag_map;
CREATE TABLE diet_tag_map (
    dID INT default '0',
    tagID INT,
    PRIMARY KEY (dID , tagID),
    KEY tag_fk (tagID),
    CONSTRAINT diet_fk FOREIGN KEY (dID)
        REFERENCES diet (dID),
    CONSTRAINT tag_fk FOREIGN KEY (tagID)
        REFERENCES tags (tagID)
);

DROP TABLE IF EXISTS Dog_Food_table;
CREATE TABLE Dog_Food_table (
    Age INT,
    Body_type VARCHAR(45),
    High_activity FLOAT(15 , 12 ),
    Low_activity FLOAT(15 , 12 ),
    Normal_activity FLOAT(15 , 12 ),
    diet_type VARCHAR(45)
);