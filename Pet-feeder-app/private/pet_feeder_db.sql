
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS Pet;
CREATE TABLE Pet (
Pet_id INT NOT NULL PRIMARY KEY,
diet_id INT NOT NULL PRIMARY KEY,
health_entry VARCHAR (255),
type_of_pet VARCHAR (255) NOT NULL,
food_rec VARCHAR (255) NOT NULL,
age_mult VARCHAR (255) NOT NULL,
food_amount VARCHAR (255) NOT NULL,
neuter_spay  NOT NULL);

DROP TABLE IF EXISTS Historical_data ;
CREATE TABLE Historical_data (
    owner_id INT NOT NULL PRIMARY KEY,
    Pet_id INT NOT NULL,
    pet_weight VARCHAR(45) NOT NULL,
    food_amount VARCHAR(255) NOT NULL,
    Breed_id INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (owner_id)
        REFERENCES Department (dept_id),
    FOREIGN KEY (Pet_id)
        REFERENCES Pet (pet_id)
);


DROP TABLE IF EXISTS Diet ;
CREATE TABLE Diet(
diet_id INT NOT NULL,
Pet_id INT NOT NULL PRIMARY KEY,
type_diet VARCHAR(45) NOT NULL,
food_amount VARCHAR(255) NOT NULL,
health VARCHAR(255) NOT NULL,
Breed_id INT NOT NULL PRIMARY KEY,

FOREIGN KEY (Pet_id) REFERENCES Pet (Pet_id));

DROP TABLE IF EXISTS dog_breed ;
CREATE TABLE dog_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT,
    male_high_base INT NOT NULL,
    female_low_base INT,
    female_high_base INT NOT NULL
);

DROP TABLE IF EXISTS cat_breed ;
CREATE TABLE dog_breed (
    b_name VARCHAR(255) NOT NULL,
    male_low_base INT,
    male_high_base INT NOT NULL,
    female_low_base INT,
    female_high_base INT NOT NULL
);

DROP TABLE IF EXISTS health ;
CREATE TABLE health (
    health_keyword VARCHAR(45) NOT NULL,
    health_mult DECIMAL,
    health_food VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS age ;
CREATE TABLE age (

DROP TABLE IF EXISTS activity ;
CREATE TABLE activity (
    activity_id INT NOT NULL,
    low_activity DECIMAL NOT NULL,
    normal_activity DECIMAL,
    high_activity VARCHAR(45) NOT NULL,
);

insert into age
(a_id, a_low, a_high,a_category,age_multi)
VALUES 
(a_id, 0.8, 2, "puppy", age_multi),
(a_id, 0.8, 2, "large puppy", age_multi),
(a_id, 0.8, 1, "kitten", age_multi),
(a_id, 1, 7.0, "adult cat",age_multi),
(a_id, 1.5, 7.0, "adult dog",age_multi),
(a_id, 7.1, 100, "senior", age_multi)
;

insert into Diet
(type_diet ,food_amount ,health)
VALUES
("raw", ),
("raw grain free", ),
("raw limited",food_amount ,health),
("dry" ,food_amount ,health),
("dry grain free" ,food_amount ),
("dry limited diet" ,food_amount ),
("wet" ,food_amount ),
("wet grain free" , food_amount ),
( "wet limited diet" ,food_amount)
;

insert into health
(health_keyword, health_mult)
VALUES 
("kidney", multi ),
("pregnant",.2  ),
("nursing", age_multi ),
("heart", age_multi ),
("joint", age_multi ),
("overweight", age_multi ),
("underweight", age_multi )
;


INSERT INTO cat_breed
(b_name , male_low_base, male_high_base,female_low_base, female_high_base )
VALUES
("Regular Domestic Cat" , 8, 10, 7,10),
("Large Domestic Cat" , 10, 25, 10,25),
("Persian Cat", 7, 12, 6, 12),
("Maine Coon", 10, 25, 10, 25),
("Siamese", 5, 10 , 5, 10 );

Insert into age
(a_id, a_low, a_high,a_category,age_multi)
VALUES 
(a_id, 0.5, 1.0, "puppy", age_multi),
(a_id, 0.5, 1.5, "kitten", age_multi),
(a_id, 1.1, 7.0, "adult",age_multi),
(a_id, 7.1, 100, "senior", age_multi)
;

INSERT INTO dog_breed
(b_name , male_low_base, male_high_base,female_low_base, female_high_base )
VALUES
("Affenpinscher" , 7, 10 ,7,10),
("Afghan Hound", 50, 60, 50, 60),
("Airedale Terrier", 50, 70 , 50, 70 ),
( " ﻿Akita",100,130, 70,100),
( " Alaskan Malamute",85, 75),
( " American English Coonhound",45,65, 45,65),
( " American Eskimo Dog(toy)",6,10,6,10),
( " American Eskimo Dog (miniature)",10,20, 10,20),
( " American Eskimo Dogs(standard)",25,35, 25,35),
( " American Foxhound",65,70, 60,65),
( " American Hairless Terrier",12,16, 12,16),
( " American Staffordshire Terrier",55,70, 40,55),
( " Anatolian Shepherd Dog",110,150, 80,120),
( " Australian Cattle Dog",35,50, 35,50),
( " Australian Shepherd",50,65, 40,55),
( " Australian Terrier",12,18, 12,18),
( " Basenji",24,24, 22,22),
( " Basset Hound",40,65, 40,65),
( " Beagles(13 inches & under)",15,20, 20,30),
( " Beagles(13-15 inches)",20,30),
( " Bearded Collie",45,55, 45,55),
( " Beauceron",70,110, 70,110),
( " Bedlington Terrier",17,23, 17,23),
( " Belgian Malinoi",60,80, 40,60),
( " Belgian Sheepdog",55,75, 45,60),
( " Belgian Tervuren",55,75, 45,60),
( " Bergamaco",70,84, 57,71),
( " Berger Picard",50,70, 50,70),
( " Bernese Mountain Dog",80,115, 70,95),
( " Bichons Frise",12,18, 12,18),
( " Black and Tan Coonhound",65,110, 65,110),
( " Black Russian Terrier",80,130, 80,130),
( " Bloodhound",90,110, 80,100),
( " Bluetick Coonhound",55,80, 45,65),
( " Boerboel",150,200, 150,200),
( " Border Collie",30,55, 30,55),
( " Border Terrier",13,15.5, 11.5,14),
( " Borzoi",75,105, 60,85),
( " Boston Terrier",12,25, 12,25),
( " Bouviers des Flandre",70,110, 70,110),
( " Boxer",65,80, 50, 65),
( " Briard",55,100, 55,100),
( " Brittany",30,40, 30,40),
( " Brussels Griffon",8,10, 8,10),
( " Bull Terrier",50,70, 50,70),
( " Bulldog",50, 40),
( " Bullmastiff",110,130, 100,120),
( " Cairn Terrier",14, 13),
( " Canaan Dog",45,55, 35,45),
( " Cardigan Welsh Corgi",30,38, 25,34),
( " Cavalier King Charles Spaniel",13,18, 13,18),
( " Cesky Terrier",14,24, 14,24),
( " Chihuahua",6, 6, 6, 6),
( " Chinese Creted",8,12, 8,12),
( " Chinee SharPei",45,60, 45,60),
( " Chinook",55,90, 50,65),
( " Chow Chow",45,70, 45,70),
( " Cirnechi dell Etna",22,26, 17,22),
( " Collie",60,75, 50,65),
( " Coton de Tulear",9,15, 8,13),
( " Dachshunds(tandard)",16,32, 16,32),
( " Dachshund(miniature)",9,11, 9,11),
( " Dalmatian",45,70, 45,70),
( " Dandie Dinmont Terrier",18,24, 18,24),
( " Doberman Pinscher",75,100, 60,90),
( " Dogue de Bordeaux",null,130,null, 120),
( " English Foxhound",60,75, 60,75),
( " English Toy Spaniel",8,14, 8,14),
( " Entlebucher Mountain Dog",55,65, 55,65),
( " Finnish Lapphund",33,53, 33,53),
( " Finnih Spitz",25,33, 20,28),
( " Fox Terrier (Smooth)",18, 16),
( " Fox Terrier (Wire)",16,18, 14, 16),
( " French Bulldog",22, 28, 22, 28),
( " German Pinscher",25,45, 25,45),
( " German Shepherd Dog",65,90, 50,70),
( " Giant Schnauzer",60,85, 55,75),
( " Glen of Imaal Terrier",32,40, 32,40),
( " Great Dane",140,175, 110,140),
( " Great Pyrenee",100,130,85,100),
( " Greater Swiss Mountain Dog",115,140, 85,110),
( " Greyhound",65,70, 60,65),
( " Harrier",45,60, 45,60),
( " Havanee",7,13, 7,13),
( " Ibizan Hound",50, 45),
( " Icelandic Sheepdog",30, 25),
( " Irish Terrier",27, 25),
( " Irish Wolfhound",120, 105),
( " Italian Greyhound",7,14, 7,14),
( " Japanee Chin",7,11, 7,11),
( " Keehonden",35,45, 35,45),
( " Kerry Blue Terrier",33,40, 31,38),
( " Komondorok",100, 140 ,80,120),
( " Kuvazok",100,115, 70,90),
( " Lagotti Romagnoli",28.5,35, 24,31),
( " Lakeland Terrier",17, 16),
( " Leonberger",110,170, 90,140),
( " Lhasa Apso",12,18, 12,18),
( " Lowchen",15, 15),
( " Maltee" ,2,7,2,7),
( " Manchester Terrier(toy)",7,12, 7,12),
( " Manchester Terriers (standard)",12,22,12,22),
( " Mastiff",160,230, 120,170),
( " Miniature American Shepherd",20,40, 20,40),
( " Miniature Bull Terrier",18,28, 18,28),
( " Miniature Pinscher",8,10, 8,10),
( " Miniature Schnauzer",11,20, 11,20),
( " Neapolitan Mastiff",150, 110),
( " Newfoundland",130,150, 100,120),
( " Norfolk Terrier",11,12, 11,12),
( " Norwegian Buhund",31,40, 26,35),
( " Norwegian Elkhound",55, 48),
( " Norwegian Lundehund",20,30, 20,30),
( " Norwich Terrier",12, 12),
( " Old English Sheepdog",60,100, 60,100),
( " Otterhound",115, 80),
( " Papillon",5,10, 5,10),
( " Parson Russell Terrier",13,17, 13,17),
( " Pekingee",10, 14,10, 14),
( " Pembroke Welsh Corgi",20, 30, 20, 28),
( " Petits Bassets Griffons Vendeen",25,40, 25,40),
( " Pharaoh Hound",45,55, 45,55),
( " Plott",50,60, 40,55),
( " Pointer",55,75, 45,65),
( " Pointer (German Shorthaired)",55,70, 45,60),
( " Pointer (German Wirehaired)",50,70, 50,70),
( " Polish Lowland Sheepdog",30,50, 30,50),
( " Pomeranian",3,7, 3,7),
( " Poodle(toy)",4,6,4,6),
( " Poodle (miniature)",10,15,10,15),
( " Poodles(male standard) ",60,70,40,50),
( " Portuguese Podengo Pequeno",9,13, 9,13),
( " Portuguese Water Dog",42,60, 35,50),
( " Pug",14,18, 14,18),
( " Pulik",25,35, 25,35),
( " Pumik",27,29, 22,24),
( " Pyrenean Shepherd",15,30, 15,30),
( " Rat Terrier",10,25, 10,25),
( " Redbone Coonhound",45,70, 45,70),
( " Retrievers (Cheapeake Bay)",65,80, 55,70),
( " Retriever (Curly Coated)",60,95, 60,95),
( " Retriever (Flat Coated)",60,70, 60,70),
( " Retriever (Golden)",65,75, 55,65),
( " Retriever (Labrador)",65,80, 55,70),
( " Retriever (Nova Scotia Duck Tolling)",35,50, 35,50),
( " Rhodesian Ridgeback",85, 70),
( " Rottweiler",95,135, 80,100),
( " Russell Terrier",9,15, 9,15),
( " Saluki",40,65, 40,65),
( " Samoyed",45,65, 35,50),
( " Schipperke",10,16, 10,16),
( " Scottish Deerhound", 85, 110, 75,95),
( " Scottish Terrier",19,22, 18,21),
( " Sealyham Terrier",23,24),
( " slightly less Setters (Englih)",65,80, 45,55),
( " Setter (Gordon)",55,80, 45,70),
( " Setters (Irih Red and White)",42,60, 35,50),
( " Setters (Irih)",70, 60),
( " Shetland Sheepdog",15,25, 15,25),
( " Shiba Inu",23, 17),
( " Shih Tzu",9,16, 9,16),
( " Siberian Huskie",45,60, 35,50),
( " Silky Terrier",9,11, 9,11),
( " Skye Terrier",35,45, 32,40),
( " Sloughi",35,50, 35,50),
( " Soft Coated Wheaten Terrier",35,40, 30,35),
( " Spaniel (American Water)",30,45, 25,40),
( " Spaniel (Boykin)",30,40, 25,35),
( " Spaniel (Clumber)",70,85, 55,70),
( " Spaniels (Englih Cocker)",28,34, 26,32),
( " Spaniels (Englih Springer)",50, 40),
( " Spaniel (Field)",35,50, 35,50),
( " Spaniels (Irih Water)",55,68, 45,58),
( " Spaniels (Susex)",35,45, 35,45),
( " Spaniels (Welh Springer)",40,55, 35,50),
( " Spanish Water Dog",40,49, 31,40),
( " Spinoni Italiani",56, 56),
( " St. Bernard",140,180, 120,140),
( " Staffordshire Bull Terrier",28,38, 24, 34),
( " Standard Schnauzer",35,50, 30,45),
( " Swedish Vallhund",20,35, 20,35),
( " Tibetan Mastiff",90,150, 70,120),
( " Tibetan Terrier",18,30, 16, 28),
( " Tibetan Spaniel",9,15, 9,15),
( " Toy Fox Terrier",3.5,7, 3.5,7),
( " Treeing Walker Coonhound",50,70, 50,70),
( " Vizsla",55,60, 44,55),
( " Weimaraner",70,90, 55,75),
( " Welsh Terrier",20, 18),
( " West Highland White Terrier",15,20, 15,20),
( " Whippet",25,40, 25,40),
( " Wirehaired Pointing Griffon",50,70, 35, 50),
( " Wirehaired Vizsla",55,65, 45,55),
( " Xoloitzcuintli(toy)",10,15,10,15),
( " Xoloitzcuintli(miniature)",15,30,15,30),
( " Xoloitzcuintli(standard)",30,55, 30,55),
( " Yorkshire Terrier",5, 7,5, 7);
