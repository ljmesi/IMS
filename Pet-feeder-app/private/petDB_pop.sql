insert into age
(a_low, a_high,a_category, age_multi)
VALUES 
(0.1666667, 0.25 , "puppy 2mo", 0),
(0.25, 0.33 , "puppy 3mo", 0),
(0.33, 0.5, " puppy 4mo",0),
(0.5, 0.58333333, "puppy 5mo",0),
(0.58333333, 0.6667, "puppy 6mo",0),
(0.06667, 0.83333, "puppy 7mo",0),
(0.833333, 1.0, "puppy 8mo",0),
(1.0, 1.166667, "puppy 10mo",0),
(1.66667, 2.0 , "puppy 12 mo",0),
(0.833333, 8.0, "adult small - medium dog",0),
(2, 7.0, "adult large dog",0),
(7.0, 100, "senior dog",0),
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
( " Chihuahuas",3, 10, 3, 10),
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
(health_name, active, inactive)
VALUES 
("Kidney disease", null, null),
("Pregnant 0-5wks", 1.3, 1.2),
("Pregnant 5+wks)", 1.3, 1.2),
("Nursing 1-3wks", 1.4,1.3),
("Nursing 3+wks", 1.6,1.5 ),
("Heart condition",null, null),
("Joint issues",NULL,NULL),
("None",NULL,NULL),
("Other",NULL,NULL),
("Overweight", 0.56,0.65 ),
("Underweight", 1.33, 1.5);

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

<<<<<<< HEAD
INSERT INTO diet_health_tag_map (dID, tagID) 
SELECT dID, tagID FROM diet INNER JOIN tags ON diet.diet_name LIKE CONCAT('%', tags.tag_name, '%') ;
=======
insert into dog_adult_diet
 (size, body_weight, High_activity, Normal_activity, Low_activity, diet)
 VALUES
("toy",2000,0.0295,0.026,0.0225,"dry grain free"),
("toy",4000,0.025,0.022,0.01925,"dry grain free"),
("small",5000,0.0236,0.0208,0.0182,"dry grain free"),
("small",6000,0.0226666666666667,0.02,0.0173333333333333,"dry grain free"),
("small",8000,0.021125,0.018625,0.01625,"dry grain free"),
("small",10000,0.0123,0.0109,0.0096,"dry grain free"),
("medium",10000,0.02,0.0177,0.0154,"dry grain free"),
("medium",15000,0.0181333333333333,0.01613333333,0.014066666667,"dry grain free"),
("medium",23000,0.0165652173913043,0.014695652173913,0.0128260869565217,"dry grain free"),
("large",23000,0.0174347826086957,0.0154347826086957,0.0134782608695652,"dry grain free"),
("large",25000,0.01744,0.01548,0.01348,"dry grain free"),
("large",30000,0.0154333333333333,0.0137,0.0119666666666667,"dry grain free"),
("large",35000,0.0141714285714286,0.0126,0.0110285714285714,"dry grain free"),
("large",40000,0.01315,0.0117,0.010225,"dry grain free"),
("large",46000,0.0120869565217391,0.0107608695652174,0.00941304347826087,"dry grain free"),
("xlarge",46000,0.0126739130434783,0.0112826086956522,0.0098695652173913,"dry grain free"),
("xlarge",50000,0.01306,0.0116,0.01016,"dry grain free"),
("xlarge",55000,0.0125454545454545,0.0111636363636364,0.009781818182,"dry grain free"),
("xlarge",60000,0.0125166666666667,0.0111333333333333,0.00975,"dry grain free"),
("xlarge",65000,0.0122,0.0108615384615385,0.00952307692307692,"dry grain free"),
("xlarge",70000,0.0120857142857143,0.0107571428571429,0.00941428571428571,"dry grain free"),
("xlarge",75000,0.0119066666666667,0.0105866666666667,0.00928,"dry grain free"),
("xlarge",80000,0.0117125,0.010425,0.00915,"dry grain free"),
("xlarge",85000,0.0116352941176471,0.0103529411764706,0.00908235294117647,"dry grain free"),
("xlarge",90000,0.0114111111111111,0.0101555555555556,0.00891111111111111,"dry grain free"),
("xlarge",95000,0.0113894736842105,0.0101473684210526,0.00889473684210526,"dry grain free"),
("toy",2000,0.0285,0.025,0.0215,"dry"),
("toy",4000,0.024,0.021,0.01825,"dry"),
("small",5000,0.0226,0.0198,0.0172,"dry"),
("small",6000,0.0216666666666667,0.019,0.0163333333333333,"dry"),
("small",8000,0.020125,0.017625,0.01525,"dry"),
("small",10000,0.0113,0.0099,0.0086,"dry"),
("medium",10000,0.019,0.0167,0.0144,"dry"),
("medium",15000,0.0171333333333333,0.0151333333333333,0.0130666666666667,"dry"),
("medium",23000,0.0155652173913043,0.013695652173913,0.0118260869565217,"dry"),
("large",23000,0.0164347826086957,0.0144347826086957,0.0124782608695652,"dry"),
("large",25000,0.01644,0.01448,0.01248,"dry"),
("large",30000,0.0144333333333333,0.0127,0.0109666666666667,"dry"),
("large",35000,0.0131714285714286,0.0116,0.0100285714285714,"dry"),
("large",40000,0.01215,0.0107,0.009225,"dry"),
("large",46000,0.0110869565217391,0.00976086956521739,0.00841304347826087,"dry"),
("xlarge",46000,0.0116739130434783,0.0102826086956522,0.0088695652173913,"dry"),
("xlarge",50000,0.01206,0.0106,0.00916,"dry"),
("xlarge",55000,0.0115454545454545,0.0101636363636364,0.00878181818181818,"dry"),
("xlarge",60000,0.0115166666666667,0.0101333333333333,0.00875,"dry"),
("xlarge",65000,0.0112,0.00986153846153846,0.00852307692307692,"dry"),
("xlarge",70000,0.0110857142857143,0.00975714285714286,0.00841428571428571,"dry"),
("xlarge",75000,0.0109066666666667,0.00958666666666667,0.00828,"dry"),
("xlarge",80000,0.0107125,0.009425,0.00815,"dry"),
("xlarge",85000,0.0106352941176471,0.00935294117647059,0.00808235294117647,"dry"),
("xlarge",90000,0.0104111111111111,0.00915555555555556,0.00791111111111111,"dry"),
("xlarge",95000,0.0103894736842105,0.00914736842105263,0.00789473684210526,"dry"),
("toy",5000,0.05,0.0457,0.0367,"raw"),
("small",8000,0.04,0.035,0.03,"raw"),
("medium",10000,0.03,0.025,0.022,"raw"),
("large",23000,0.024,0.023,0.022,"raw"),
("xlarge",46000,0.023,0.022,0.021,"raw"),
("toy",5000,0.051,0.046,0.0368,"raw grain free"),
("small",8000,0.041,0.037,0.032,"raw grain free"),
("medium",10000,0.031,0.021,0.023,"raw grain free"),
("large",23000,0.025,0.024,0.023,"raw grain free"),
("xlarge",46000,0.024,0.023,0.022,"raw grain free"),
("toy",5000,0.0566,0.051,0.041,"wet"),
("small",8000,0.06375,0.058,0.045,"wet"),
("medium",10000,0.0566,0.051,0.041,"wet"),
("large",23000,0.05052174,0.042,0.03,"wet"),
("xlarge",46000,0.1,0.09,0.08,"wet"),
("toy",5000,0.057,0.052,0.042,"wet grain free"),
("small",8000,0.065,0.06,0.046,"wet grain free"),
("medium",10000,0.057,0.052,0.042,"wet grain free"),
("large",23000,0.0515,0.043,0.031,"wet grain free"),
("xlarge",46000,0.11,0.091,0.081,"wet grain free");


insert into dog_senior_diet
 (size, body_weight, High_Normal_activity, Low_activity, Diet)
 VALUES
("small",9000,0.02077778,0.01811,"dry grain free"),
("medium",10000,0.0188,0.0164,"dry grain free"),
("medium",15000,0.01706667,0.01486667,"dry grain free"),
("medium",20000,0.01595,0.0139,"dry grain free"),
("medium",25000,0.01512,0.0132,"dry grain free"),
("large",25000,0.01512,0.0132,"dry grain free"),
("large",30000,0.0145,0.01266667,"dry grain free"),
("large",35000,0.014,0.0122285714285714,"dry grain free"),
("large",40000,0.013575,0.01185,"dry grain free"),
("xlarge",46000,0.0129130434782609,0.0113043478261,"dry grain free"),
("xlarge",50000,0.01288,0.01126,"dry grain free"),
("xlarge",60000,0.01235,0.01081667,"dry grain free"),
("xlarge",70000,0.0119285714285714,0.010442857142857,"dry grain free"),
("xlarge",80000,0.011575,0.010125,"dry grain free"),
("xlarge",90000,0.01126666667,0.009867,"dry grain free"),
("toy",5000,0.04,0.03656,0.02936,"raw"),
("medium",10000,0.024,0.02,0.0176,"raw"),
("large",23000,0.0192,0.0184,0.0176,"raw"),
("xlarge",46000,0.0184,0.0176,0.0168,"raw"),
("medium",10000,0.0248,0.0168,0.0184,"raw grain free"),
("large",23000,0.02,0.0192,0.0184,"raw grain free"),
("xlarge",46000,0.0192,0.0184,0.0176,"raw grain free"),
("toy",5000,0.04528,0.0408,0.0328,"wet"),
("small",8000,0.051,0.0464,0.037,"wet"),
("medium",10000,0.04528,0.0408,0.032,"wet"),
("large",23000,0.0404,0.0336,0.024,"wet"),
("xlarge",46000,0.08,0.072, 0.064,"wet"),
("toy",5000,0.0456,0.0416,0.0336,"wet grain free"),
("small",8000,0.052,0.048,0.0368,"wet grain free"),
("large",23000,0.0412,0.0344,0.0248,"wet grain free"),
("xlarge",46000,0.088,0.0728,0.0648,"wet grain free");


insert into dog_pup_diet
(size,body_weight, Age_2mo, Age_3_6mo , Age6_12mo , Age_12_more,Diet)
VALUES
("toy",2000,0.025,0.029125,NA,NA,"dry"),
("small",5000,0.0186,0.02275,NA,NA,"dry"),
("medium",10000,0.0154,0.0189,0.018,0.0162,"dry"),
("medium",15000,0.0143333333333333,0.0185833333333333,0.0165333333333333,0.0148,"dry"),
("medium",25000,0.0102,0.0138,0.0134033333333333,0.01279,"dry"),
("large",30000,0.0102,0.0140541666666667,0.0135458333333333,0.0122,"dry"),
("large",35000,0.00917142857142857,0.0133642857142857,0.013375,0.0120214285714286,"dry"),
("large",40000,0.00885,0.012890625,0.012909375,0.011525,"dry"),
("large",45000,0.00865555555555556,0.0127222222222222,NA,NA,"dry"),
("xlarge",50000,0.0127222222222222,0.01281,0.0116666666666667,0.01062,"dry"),
("xlarge",55000,0.00814545454545455,0.0117272727272727,NA,NA,"dry"),
("xlarge",60000,0.0117272727272727,0.0122083333333333,0.0114444444444444,0.0103111111111111,"dry"),
("xlarge",65000,0.00744615384615385,0.0102769230769231,NA,NA,"dry"),
("xlarge",70000,0.0102769230769231,0.0114809523809524,0.0112190476190476,0.0101952380952381,"dry"),
("xlarge",75000,0.00712,0.00981333333333333,NA,NA,"dry"),
("xlarge",80000,0.00981333333333333,0.010665625,0.0108208333333333,0.00966875,"dry"),
("xlarge",85000,0.00684705882352941,0.0103305555555556,0.0104814814814815,0.00937777777777778,"dry"),
("xlarge",90000,0.0084705882352941,0.0103305555555556,0.0104814814814815,0.00937777777777778,"dry"),
("toy",2000,0.026,0.030125,NA,NA,"dry grain free"),
("small",5000,0.0196,0.02375,NA,NA,"dry grain free"),
("medium",10000,0.0164,0.0199,"0.019","0.0172","dry grain free"),
("medium",15000,0.0153333333333,0.01958333333333,0.0175333,0.0158,"dry grain free"),
("medium",25000,0.0112,0.0148,0.0144033333333333,0.01379,"dry grain free"),
("large",30000,0.0112,0.0150541666666667,0.0145458333333333,0.0132,"dry grain free"),
("large",35000,0.0101714285714286,0.0143642857142857,0.014375,0.0130214285714286,"dry grain free"),
("large",40000,0.00985,0.013890625,0.013909375,0.012525,"dry grain free"),
("large",45000,0.0096555556,0.013722222,NA,NA,"dry grain free"),
("xlarge",50000,0.0137222,0.01381,0.012666667,0.01162,"dry grain free"),
("xlarge",55000,0.0091454545454546,0.012727,NA,NA,"dry grain free"),
("xlarge",60000,0.012727273,0.01320833,0.012444,0.011311,"dry grain free"),
("xlarge",65000,0.00844615384615385,0.0112769230769231,NA,NA,"dry grain free"),
("xlarge",70000,0.0112769230769231,0.0124809523809524,0.0122190476190476,0.0111952380952381,"dry grain free"),
("xlarge",75000,0.00812,0.010813,NA,NA,"dry grain free"),
("xlarge",80000,0.0108133333,0.011665625,0.0118208333333333,0.01066875,"dry grain free"),
("xlarge",85000,0.00784705882352941,0.0113305556,0.0114814814814815,0.010378,"dry grain free"),
("xlarge",90000,0.0094705882352941,0.0113305556,0.0114814814814815,0.010378,"dry grain free"),
("toy",2000,0.1,0.05,0.04,0.02,"raw"),
("small",10000,0.085,0.048,0.039,0.02,"raw"),
("medium",25000,0.075,0.045,0.038,0.02,"raw"),
("large",30000,0.068,0.042,0.037,0.02,"raw"),
("xlarge",50000,0.06,0.04,0.035,0.02,"raw"),
("toy",2000,0.099,0.049,0.039,0.019,"raw"),
("small",10000,0.084,0.047,0.038,0.019,"raw grain free"),
("medium",25000,0.075,0.044,0.037,0.019,"raw grain free"),
("large",30000,0.067,0.041,0.036,0.019,"raw grain free"),
("xlarge",50000,0.059,0.039,0.034,0.019,"raw grain free"),
("toy",2000,0.0891045,0.049,0.059,0.028,"wet"),
("small",10000,0.0624,0.0315,0.021,0.011,"wet"),
("medium",25000,0.04884,0.0244,0.035,0.016,"wet"),
("large",30000,0.04613333,0.023,0.018,0.009,"wet"),
("xlarge",50000,0.04108,0.0221,0.019,0.01,"wet"),
("toy",2000,0.09,0.05,0.06,0.029,"wet grain free"),
("small",10000,0.063,0.0326,0.0211,0.0111,"wet grain free"),
("medium",25000,0.049,0.025,0.036,0.017,"wet grain free"),
("large",30000,0.047,0.024,0.019,0.01,"wet grain free"),
("xlarge",50000,0.042,0.0231,0.020,0.011,"wet grain free");


INSERT INTO diet_tag_map (dID, tagID) 
SELECT dID, tagID FROM diet INNER JOIN tags ON diet.diet_name LIKE CONCAT('%', tags.tag_name, '%') ;

>>>>>>> origin
