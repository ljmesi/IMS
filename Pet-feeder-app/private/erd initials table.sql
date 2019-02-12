
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS Pet;
CREATE TABLE Pet (
Pet_id INT NOT NULL PRIMARY KEY,
diet_id INT NOT NULL PRIMARY KEY,
health_entry VARCHAR (255) NOT NULL,
type_of_pet VARCHAR (255) NOT NULL,
food_rec VARCHAR (255) NOT NULL,
age_mult VARCHAR (255) NOT NULL,
food_amount VARCHAR (255) NOT NULL,
neuter_pay VARCHAR (255) NOT NULL);

DROP TABLE IF EXISTS Historical_data ;
CREATE TABLE Historical_data(
owner_id INT NOT NULL,
Pet_id INT NOT NULL PRIMARY KEY,
weight VARCHAR(45) NOT NULL,
food_amount VARCHAR(255) NOT NULL,
health VARCHAR(255) NOT NULL,
Breed_id INT NOT NULL PRIMARY KEY,

FOREIGN KEY (owner_id) REFERENCES Department (dept_id),
FOREIGN KEY (Pet_id) REFERENCES Department (dept_id));


DROP TABLE IF EXISTS Diet ;
CREATE TABLE Diet(
diet_id INT NOT NULL,
Pet_id INT NOT NULL PRIMARY KEY,
type_diet VARCHAR(45) NOT NULL,
food_amount VARCHAR(255) NOT NULL,
health VARCHAR(255) NOT NULL,
Breed_id INT NOT NULL PRIMARY KEY,

FOREIGN KEY (Pet_id) REFERENCES Pet (Pet_id));

DROP TABLE IF EXISTS breed ;
CREATE TABLE breed(
breed_id INT NOT NULL,
Pet_id INT NOT NULL PRIMARY KEY,
type_diet VARCHAR(45) NOT NULL,
female_high_base VARCHAR(255) NOT NULL,
female_low_base VARCHAR(255) NOT NULL,
male_high_base VARCHAR(255) NOT NULL,
female_high_base VARCHAR(255) NOT NULL,
health VARCHAR(255) NOT NULL,


FOREIGN KEY (Pet_id) REFERENCES Pet (Pet_id));

DROP TABLE IF EXISTS health ;
CREATE TABLE health(


health_keyword VARCHAR(45) NOT NULL,
health_multi VARCHAR(255) NOT NULL,
health_food VARCHAR(255) NOT NULL);


DROP TABLE IF EXISTS age ;
CREATE TABLE age(
age_id INT NOT NULL,

age_multi VARCHAR(45) NOT NULL);



















