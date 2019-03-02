
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS Pet;
CREATE TABLE Pet (
    pID INT(11) NOT NULL AUTO_INCREMENT,
    diet_id INT NOT NULL,
    type_of_pet VARCHAR(255) NOT NULL,
    food_rec VARCHAR(255) NOT NULL,
    food_amount VARCHAR(255) NOT NULL,
    FOREIGN KEY (diet_id)
        REFERENCES Diet (dID)
);

Drop table if exists Owner;
CREATE TABLE Owner (
    oID INT(11) NOT NULL AUTO_INCREMENT,
    pet_id INT(11) NOT NULL,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (pet_id)
        REFERENCES Pet (pID)
);

DROP TABLE IF EXISTS Historical_data ;

DROP TABLE IF EXISTS Owner;
CREATE TABLE Owner (
    oID INT(11) NOT NULL PRIMARY KEY,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL
);
    owner_id INT NOT NULL PRIMARY KEY,
    Pet_id INT NOT NULL,
    pet_weight VARCHAR(45) NOT NULL,
    food_amount VARCHAR(255) NOT NULL,
    Breed_id INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (owner_id)
        REFERENCES Department (dept_id),
    FOREIGN KEY (Pet_id)
        REFERENCEROP TABLE IF EXISTS Historical_data ;
CREATE TABLE Historical_data (
    owner_id INT(11) NOT NULL,
    pet_id INT(11) NOT NULL,
    pet_weight VARCHAR(45) NOT NULL,
    food_amount VARCHAR(255) NOT NULL,
    Breed_id INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (owner_id)
        REFERENCES Owner (oID),
    FOREIGN KEY (pet_id)
        REFERENCES Owner(pet_id)
);


DROP TABLE IF EXISTS Diet ;
CREATE TABLE diet (
    dID INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    food_amount VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS health ;
CREATE TABLE health (
    hID INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    health_mult DECIMAL
);

drop table if exists tags;
CREATE TABLE tags (
    tagID INT(11) NOT NULL auto_increment,
    name VARCHAR(45) NOT NULL
);

drop table if exists diet_health_tags;
CREATE TABLE diet_health_tags (
    d_hID INT(11) NOT NULL AUTO_INCREMENT,
    tag_id INT,
    PRIMARY KEY (d_hID , tag_id),
    FOREIGN KEY (tag_id)
        REFERENCES tags (tagID)
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
    lifeID INT(11) NOT NULL auto_increment,
    low_activity DECIMAL NOT NULL,
    normal_activity DECIMAL,
    high_activity decimal NOT NULL,
);

DROP TABLE if exists age;
CREATE TABLE age (
    aID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    a_low DECIMAL NOT NULL,
    a_high DECIMAL NOT NULL,
    a_category VARCHAR(45) NOT NULL,
    age_multi DECIMAL NOT NULL
);
