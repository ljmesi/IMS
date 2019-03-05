insert into age
(a_low, a_high,a_category, age_multi)
VALUES 
(0.25, 0.33 , "puppy", 0),
(0.33, 0.5, "large puppy",0),
(0.5, 0.6667, "large puppy",0),
(0.06667, 0.83333, "large puppy",0),
(0.833333, 1.0, "large puppy",0),
(1.0, 1.166667, "large puppy",0),
(1.66667, 1.3333333 , "large puppy",0),
(1.3333333, 1.5, "large puppy",0),
(1.5, 2.0, "large puppy",0),
(0.833333, 8.0, "adult small - medium dog",0),
(2, 7.0, "adult large dog",0),
(7.0, 100, "senior small - medium dog",0),
(5, 100, "senior dog large",0),
(0.8, 1, "kitten", 1.33),
(1, 9, "adult cat", 1),
(9, 100, "senior cat", .85)
;

INSERT INTO cat_breed
(b_name , male_low_base, male_high_base,female_low_base, female_high_base )
VALUES
("Regular Domestic Cat" , 8, 10, 7,10),
("Large Domestic Cat" , 10, 25, 10,25),
("Persian Cat", 7, 12, 6, 12),
("Maine Coon", 10, 25, 10, 25),
("Siamese", 5, 10 , 5, 10 );

INSERT INTO dog_breed
(b_name , male_low_base, male_high_base,female_low_base, female_high_base )
VALUES
(" Affenpinschers" , 7, 10 ,7,10),
(" Afghan Hounds", 50, 60, 50, 60),
(" Airedale Terriers", 50, 70 , 50, 70 ),
( " Akitas",100,130, 70,100),
( " Alaskan Malamutes",NULL,85,NULL, 75),
( " American English Coonhounds",45,65, 45,65),
( " American Eskimo Dogs(toy)",6,10,6,10),
( " American Eskimo Dogs (miniature)",10,20, 10,20),
( " American Eskimo Dogs(standard)",25,35, 25,35),
( " American Foxhounds",65,70, 60,65),
( " American Hairless Terriers",12,16, 12,16),
( " American Staffordshire Terriers",55,70, 40,55),
( " Anatolian Shepherd Dogs",110,150, 80,120),
( " Australian Cattle Dogs",35,50, 35,50),
( " Australian Shepherds",50,65, 40,55),
( " Australian Terriers",12,18, 12,18),
( " Basenjis",24,24, 22,22),
( " Basset Hounds",40,65, 40,65),
( " Beagles(13 inches & under)",15,20, 15,20),
( " Beagles(13-15 inches)",20,30,20,30),
( " Bearded Collies",45,55, 45,55),
( " Beaucerons",70,110, 70,110),
( " Bedlington Terriers",17,23, 17,23),
( " Belgian Malinois",60,80, 40,60),
( " Belgian Sheepdogs",55,75, 45,60),
( " Belgian Tervuren",55,75, 45,60),
( " Bergamasco",70,84, 57,71),
( " Berger Picards",50,70, 50,70),
( " Bernese Mountain Dogs",80,115, 70,95),
( " Bichons Frises",12,18, 12,18),
( " Black and Tan Coonhounds",65,110, 65,110),
( " Black Russian Terriers",80,130, 80,130),
( " Bloodhounds",90,110, 80,100),
( " Bluetick Coonhounds",55,80, 45,65),
( " Boerboels",150,200, 150,200),
( " Border Collies",30,55, 30,55),
( " Border Terriers",13,15.5, 11.5,14),
( " Borzois",75,105, 60,85),
( " Boston Terriers",12,25, 12,25),
( " Bouviers des Flandres",70,110, 70,110),
( " Boxers",65,80, 50, 65),
( " Briards",55,100, 55,100),
( " Brittanys",30,40, 30,40),
( " Brussels Griffons",8,10, 8,10),
( " Bull Terriers",50,70, 50,70),
( " Bulldogs",40, 50, 30, 40),
( " Bullmastiffs",110,130, 100,120),
( " Cairn Terriers",NULL,14,NULL, 13),
( " Canaan Dogs",45,55, 35,45),
( " Cardigan Welsh Corgis",30,38, 25,34),
( " Cavalier King Charles Spaniels",13,18, 13,18),
( " Cesky Terriers",14,24, 14,24),
( " Chihuahuas",6, 6, 6, 6),
( " Chinese Crested",8,12, 8,12),
( " Chinese SharPei",45,60, 45,60),
( " Chinooks",55,90, 50,65),
( " Chow Chows",45,70, 45,70),
( " Cirnechi dell Etna",22,26, 17,22),
( " Collies",60,75, 50,65),
( " Coton de Tulear",9,15, 8,13),
( " Dachshunds(standard)",16,32, 16,32),
( " Dachshunds(miniature)",9,11, 9,11),
( " Dalmatians",45,70, 45,70),
( " Dandie Dinmont Terriers",18,24, 18,24),
( " Doberman Pinschers",75,100, 60,90),
( " Dogues de Bordeaux",null,130,null, 120),
( " English Foxhounds",60,75, 60,75),
( " English Toy Spaniels",8,14, 8,14),
( " Entlebucher Mountain Dogs",55,65, 55,65),
( " Finnish Lapphunds",33,53, 33,53),
( " Finnish Spitz",25,33, 20,28),
( " Fox Terriers (Smooth)",15, 18,13, 16),
( " Fox Terriers (Wire)",15,18, 13, 16),
( " French Bulldogs",22, 28, 22, 28),
( " German Pinschers",25,45, 25,45),
( " German Shepherd Dogs",65,90, 50,70),
( " Giant Schnauzers",60,85, 55,75),
( " Glen of Imaal Terriers",32,40, 32,40),
( " Great Danes",140,175, 110,140),
( " Great Pyrenees",100,130,85,100),
( " Greater Swiss Mountain Dogs",115,140, 85,110),
( " Greyhounds",65,70, 60,65),
( " Harriers",45,60, 45,60),
( " Havanese",7,13, 7,13),
( " Ibizan Hounds",40, 50,38, 45),
( " Icelandic Sheepdogs",20, 30,20, 25),
( " Irish Terriers",22,27,20, 25),
( " Irish Wolfhounds",110,120,95, 105),
( " Italian Greyhounds",7,14, 7,14),
( " Japanese Chin",7,11, 7,11),
( " Keeshonden",35,45, 35,45),
( " Kerry Blue Terriers",33,40, 31,38),
( " Komondorok",100, 140 ,80,120),
( " Kuvaszok",100,115, 70,90),
( " Lagotti Romagnoli",28.5,35, 24,31),
( " Lakeland Terriers",13, 17,12, 16),
( " Leonbergers",110,170, 90,140),
( " Lhasa Apsos",12,18, 12,18),
( " Lowchen",11, 15,11 ,15),
( " Maltese" ,2,7,2,7),
( " Manchester Terriers(toy)",7,12, 7,12),
( " Manchester Terriers (standard)",12,22,12,22),
( " Mastiffs",160,230, 120,170),
( " Miniature American Shepherds",20,40, 20,40),
( " Miniature Bull Terriers",18,28, 18,28),
( " Miniature Pinschers",8,10, 8,10),
( " Miniature Schnauzers",11,20, 11,20),
( " Neapolitan Mastiffs",135,150,95, 110),
( " Newfoundlands",130,150, 100,120),
( " Norfolk Terriers",11,12, 11,12),
( " Norwegian Buhunds",31,40, 26,35),
( " Norwegian Elkhounds",50, 55,40, 48),
( " Norwegian Lundehunds",20,30, 20,30),
( " Norwich Terriers",9, 12,9, 12),
( " Old English Sheepdogs",60,100, 60,100),
( " Otterhounds",105,115,70, 80),
( " Papillons",5,10, 5,10),
( " Parson Russell Terriers",13,17, 13,17),
( " Pekingese",10, 14,10, 14),
( " Pembroke Welsh Corgis",20, 30, 20, 28),
( " Petits Bassets Griffons Vendeens",25,40, 25,40),
( " Pharaoh Hounds",45,55, 45,55),
( " Plotts",50,60, 40,55),
( " Pointers",55,75, 45,65),
( " Pointers (German Shorthaired)",55,70, 45,60),
( " Pointers (German Wirehaired)",50,70, 50,70),
( " Polish Lowland Sheepdogs",30,50, 30,50),
( " Pomeranians",3,7, 3,7),
( " Poodles(toy)",4,6,4,6),
( " Poodles (miniature)",10,15,10,15),
( " Poodles(male standard) ",60,70,40,50),
( " Portuguese Podengo Pequenos",9,13, 9,13),
( " Portuguese Water Dogs",42,60, 35,50),
( " Pugs",14,18, 14,18),
( " Pulik",25,35, 25,35),
( " Pumik",27,29, 22,24),
( " Pyrenean Shepherds",15,30, 15,30),
( " Rat Terriers",10,25, 10,25),
( " Redbone Coonhounds",45,70, 45,70),
( " Retrievers (Chesapeake Bay)",65,80, 55,70),
( " Retrievers (Curly Coated)",60,95, 60,95),
( " Retrievers (Flat Coated)",60,70, 60,70),
( " Retrievers (Golden)",65,75, 55,65),
( " Retrievers (Labrador)",65,80, 55,70),
( " Retrievers (Nova Scotia Duck Tolling)",35,50, 35,50),
( " Rhodesian Ridgebacks",80, 85,65, 70),
( " Rottweilers",95,135, 80,100),
( " Russell Terriers",9,15, 9,15),
( " Salukis",40,65, 40,65),
( " Samoyeds",45,65, 35,50),
( " Schipperkes",10,16, 10,16),
( " Scottish Deerhounds", 85, 110, 75,95),
( " Scottish Terriers",19,22, 18,21),
( " Sealyham Terriers",23,24,20,23),
( " Setters (English)",65,80, 45,55),
( " Setters (Gordon)",55,80, 45,70),
( " Setters (Irish Red and White)",42,60, 35,50),
( " Setters (Irish)",63,70,54, 60),
( " Shetland Sheepdogs",15,25, 15,25),
( " Shiba Inu",18, 23, 13,17),
( " Shih Tzu",9,16, 9,16),
( " Siberian Huskies",45,60, 35,50),
( " Silky Terriers",9,11, 9,11),
( " Skye Terriers",35,45, 32,40),
( " Sloughis",35,50, 35,50),
( " Soft Coated Wheaten Terriers",35,40, 30,35),
( " Spaniels (American Water)",30,45, 25,40),
( " Spaniels (Boykin)",30,40, 25,35),
( " Spaniels (Clumber)",70,85, 55,70),
( " Spaniels (English Cocker)",28,34, 26,32),
( " Spaniels (English Springer)",42, 50,30, 40),
( " Spaniels (Field)",35,50, 35,50),
( " Spaniels (Irish Water)",55,68, 45,58),
( " Spaniels (Sussex)",35,45, 35,45),
( " Spaniels (Welsh Springer)",40,55, 35,50),
( " Spanish Water Dogs",40,49, 31,40),
( " Spinoni Italiani",NULL,56,NULL, 56),
( " St. Bernards",140,180, 120,140),
( " Staffordshire Bull Terriers",28,38, 24, 34),
( " Standard Schnauzers",35,50, 30,45),
( " Swedish Vallhunds",20,35, 20,35),
( " Tibetan Mastiffs",90,150, 70,120),
( " Tibetan Terriers",18,30, 16, 28),
( " Tibetan Spaniel",9,15, 9,15),
( " Toy Fox Terriers",3.5,7, 3.5,7),
( " Treeing Walker Coonhounds",50,70, 50,70),
( " Vizslas",55,60, 44,55),
( " Weimaraners",70,90, 55,75),
( " Welsh Terriers",15, 20, 13, 18),
( " West Highland White Terriers",15,20, 15,20),
( " Whippets",25,40, 25,40),
( " Wirehaired Pointing Griffons",50,70, 35, 50),
( " Wirehaired Vizslas",55,65, 45,55),
( " Xoloitzcuintli(toy)",10,15,10,15),
( " Xoloitzcuintli(miniature)",15,30,15,30),
( " Xoloitzcuintli(standard)",30,55, 30,55),
( " Yorkshire Terriers",5, 7, 5, 7);

insert into lifestyle(activity_level)
VALUES
("High activity"),
("Normal activity"),
("Low activity");

insert into health
(health_name)
VALUES 
("Kidney disease"),
("Pregnant"),
("Nursing"),
("Heart condition"),
("Joint issues"),
("None"),
("Other"),
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

Insert into tags(tag_name)
VALUES
("raw"),
("grain free"),
("dry"),
("phosphorous"),
("kidney"),
("toy"),
("weight"),
("high protein"),
("heart"),
( "small breed"),
( "adult"),
( "puppy"),
( "senior"),
( "cat"),
("dog"),
("wet"),
("kitten"),
("cat"),
("joint"),
("large breed"),
("pregnant"),
("nursing");



ALTER TABLE tags modify tagID int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE tags AUTO_INCREMENT=20000001;

ALTER TABLE diet ADD dietID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE diet ADD COLUMN tag_id INT UNSIGNED NOT NULL, 
    ADD FOREIGN KEY (tag_id) REFERENCES tags(tagID);

UPDATE diet
        JOIN
    tags ON diet.diet_name LIKE CONCAT('%', tags.tag_name, '%') 
SET 
    diet.tag_id = tags.tagID;
    
ALTER TABLE health ADD COLUMN tag_id INT UNSIGNED NOT NULL, 
    ADD FOREIGN KEY (tag_id) REFERENCES tags(tagID);

UPDATE health
        JOIN
    tags ON health.health_name LIKE CONCAT('%', tags.tag_name, '%') 
SET 
    health.tag_id = tags.tagID;    
    
drop table if exists age_activity_diet_health;
CREATE TABLE age_activity_diet_health AS SELECT age.a_category,lifestyle.activity_level,diet.diet_name, health.health_name FROM
    age,
    lifestyle,
    diet,
    health
GROUP BY age.a_category, lifestyle.activity_level, diet.diet_name , health.health_name;

ALTER TABLE age_activity_diet_health ADD COLUMN amount_percent FLOAT;

ALTER TABLE age 
ADD COLUMN a_high FLOAT(10,2) NULL AFTER a_low;

INSERT INTO age (a_high) VALUES ('test', 40.35);