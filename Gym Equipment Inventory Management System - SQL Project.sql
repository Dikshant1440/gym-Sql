use StudentDB;

GO

-- Table Create
CREATE TABLE GymEquipments (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Brand VARCHAR(100),
    Category VARCHAR(50),
    Price INT,
    Quantity INT,
    Location VARCHAR(100),
    TotalPrice AS (Price * Quantity) PERSISTED
);
GO

-- Data Insert (without TotalPrice in insert)
INSERT INTO GymEquipments(Id, Name, Brand, Category, Price, Quantity, Location) VALUES
(1,'Treadmill','Frontline','Cardio',100000,4,'Cardio Section'),
(2,'Yogamat','Fitness Mantra','Accessories',600,10,'Yoga Area'),
(3,'Stair Master','Life Fitness','Cardio',150000,2,'Cardio Section'),
(4,'Spinning Bike','Frontline','Cardio',30000,4,'Cardio Section'),
(5,'Crosstrainer','Fitline','Cardio',40000,2,'Cardio Section'),
(6,'Elliptical Trainer','Power Max Fitness','Cardio',40000,2,'Cardio Section'),
(7,'Jump Box','Wellness Gym','Cardio',4000,4,'Cardio Section'),
(8,'Stepper','Wellness Gym','Cardio',1000,8,'Cardio Section'),
(9,'Side Twister','India Mart','Cardio',1500,2,'Cardio Section'),
(10,'Aluminium Rods','N/A','Cardio',200,6,'Cardio Section'),
(11,'Skipping Ropes','N/A','Cardio',200,6,'Cardio Section'),
(12,'Abs Roller','India Mart','Abs',200,4,'Cardio Section'),
(13,'Ab Coaster','India Mart','Abs',15000,2,'Cardio Section'),
(14,'Seated Ab Machine','Gymleco Strength','Abs',50000,1,'Cardio Section'),
(15,'Bar Dips Machine','Hammer Strength','Various',30000,1,'Cardio Section'),
(16,'Medicene Ball (3 kg)','HRS','Cardio',600,2,'Cardio Section'),
(17,'Medicene Ball (5 kg)','HRS','Cardio',1000,2,'Cardio Section'),
(18,'Medicene Ball (8 kg)','HRS','Cardio',1600,2,'Cardio Section'),
(19,'Medicene Ball (10 kg)','HRS','Cardio',2000,1,'Cardio Section'),
(20,'Battle Rope','Energie Fitness','Cardio',4000,1,'Cardio Section'),
(21,'Chest Press Machine','Hammer Strength','Chest',30000,1,'Workout Area'),
(22,'Flat Bench','Hammer Strength','Chest',20000,1,'Workout Area'),
(23,'Incline Bench','Hammer Strength','Chest',20000,1,'Workout Area'),
(24,'Decline Bench','Hammer Strength','Chest',15000,1,'Workout Area'),
(25,'Pec Dec Machine','Hammer Strength','Chest',35000,1,'Workout Area'),
(26,'Lat Pulldown Machine','Hammer Strength','Back',35000,1,'Workout Area'),
(27,'Seated Row Machine','Hammer Strength','Back',30000,1,'Workout Area'),
(28,'T-Bar Row Machine','Hammer Strength','Back',30000,1,'Workout Area'),
(29,'Deadlift Machine','Hammer Strength','Back',50000,1,'Workout Area'),
(30,'Leverage Lat Pulldown Machine','Hammer Strength','Back',50000,1,'Workout Area'),
(31,'T-Bar Row Landmine','Hammer Strength','Back',2000,1,'Workout Area'),
(32,'Shoulder Press Machine','Hammer Strength','Shoulders',40000,1,'Workout Area'),
(33,'Smith Machine','Hammer Strength','Various',50000,1,'Workout Area'),
(34,'Lateral Raise Machine','Hammer Strength','Shoulders',35000,1,'Workout Area'),
(35,'Multi Purpose Machine','Hammer Strength','Various',60000,2,'Workout Area'),
(36,'Flat Chest Press Machine','Hammer Strength','Various',30000,1,'Workout Area'),
(37,'Precher Curl Machine','Hammer Strength','Arms',20000,1,'Workout Area'),
(38,'Precher Curl Bench','Hammer Strength','Arms',15000,1,'Workout Area'),
(39,'Deadlift Platform','Bullrock Fitness','Back',15000,1,'Workout Area'),
(40,'Squat Rack','Hammer Strength','Legs',30000,1,'Workout Area'),
(41,'Leg Press Machine','Hammer Strength','Legs',50000,1,'Workout Area'),
(42,'Leg Curl Machine','Hammer Strength','Legs',35000,1,'Workout Area'),
(43,'Leg Extension Machine','Hammer Strength','Legs',40000,1,'Workout Area'),
(44,'Seated Calfraises Machine','Hammer Strength','Legs',25000,1,'Workout Area'),
(45,'Hack Squat Machine','Hammer Strength','Legs',45000,1,'Workout Area'),
(46,'Standing Calfraises Machine','Hammer Strength','Legs',45000,1,'Workout Area'),
(47,'Wrist Curl Machine','Hammer Strength','Arms',10000,2,'Workout Area'),
(48,'Resistance Band','Boldfit','Cardio',200,5,'Cardio Section'),
(49,'Pushup Bars','N/A','Chest',1000,2,'Workout Area'),
(50,'Weighted Plates (0.5 kg)','Challenge','Free Weights',250,8,'Workout Area'),
(51,'Weighted Plates (1 kg)','Challenge','Free Weights',500,8,'Workout Area'),
(52,'Weighted Plates (2.5 kg)','Challenge','Free Weights',1250,16,'Workout Area'),
(53,'Weighted Plates (5 kg)','Challenge','Free Weights',2500,20,'Workout Area'),
(54,'Weighted Plates (7.5 kg)','Challenge','Free Weights',3750,20,'Workout Area'),
(55,'Weighted Plates (10 kg)','Challenge','Free Weights',5000,20,'Workout Area'),
(56,'Weighted Plates (15 kg)','Challenge','Free Weights',7500,12,'Workout Area'),
(57,'Weighted Plates (20 kg)','Challenge','Free Weights',10000,12,'Workout Area'),
(58,'Weighted Plates (25 kg)','Challenge','Free Weights',12500,12,'Workout Area'),
(59,'Dumbells (2.5 kg)','Challenge','Free Weights',375,6,'Workout Area'),
(60,'Dumbells (5 kg)','Challenge','Free Weights',750,6,'Workout Area'),
(61,'Dumbells (7.5 kg)','Challenge','Free Weights',1125,6,'Workout Area'),
(62,'Dumbells (10 kg)','Challenge','Free Weights',1500,6,'Workout Area'),
(63,'Dumbells (12.5 kg)','Challenge','Free Weights',1875,6,'Workout Area'),
(64,'Dumbells (15 kg)','Challenge','Free Weights',2250,6,'Workout Area'),
(65,'Dumbells (17.5 kg)','Challenge','Free Weights',2625,6,'Workout Area'),
(66,'Dumbells (20 kg)','Challenge','Free Weights',3000,6,'Workout Area'),
(67,'Dumbells (25 kg)','Challenge','Free Weights',3750,4,'Workout Area'),
(68,'Dumbells (30 kg)','Challenge','Free Weights',4500,4,'Workout Area'),
(69,'Dumbells (35 kg)','Challenge','Free Weights',5250,2,'Workout Area'),
(70,'Dumbells (40 kg)','Challenge','Free Weights',6000,2,'Workout Area'),
(71,'Dumbells (45 kg)','Challenge','Free Weights',6750,2,'Workout Area'),
(72,'Dumbells (50 kg)','Challenge','Free Weights',7500,2,'Workout Area'),
(73,'Kettle Bell (2 kg)','HRS','Free Weights',400,2,'Cardio Section'),
(74,'Kettle Bell (5 kg)','HRS','Free Weights',1000,2,'Cardio Section'),
(75,'Kettle Bell (7 kg)','HRS','Free Weights',1400,1,'Cardio Section'),
(76,'Kettle Bell (8 kg)','HRS','Free Weights',1600,1,'Cardio Section'),
(77,'Kettle Bell (10 kg)','HRS','Free Weights',2000,1,'Cardio Section'),
(78,'Dumbell Rack','Hammer Strength','Accessories',30000,2,'Workout Area'),
(79,'Barbell Rack','Hammer Strength','Accessories',25000,2,'Workout Area'),
(80,'Plate Rack','Hammer Strength','Accessories',25000,2,'Workout Area'),
(81,'Barbell (20 kg)','ATE','Free Weights',30000,8,'Workout Area'),
(82,'Barbell (15 kg)','ATE','Free Weights',25000,8,'Workout Area'),
(83,'Straight Barbell (10 kg)','ATE','Free Weights',15000,4,'Workout Area'),
(84,'EZ Barbell (10 kg)','ATE','Free Weights',15000,2,'Workout Area'),
(85,'Tricep Barbell (10 kg)','ATE','Free Weights',20000,2,'Workout Area'),
(86,'Hexa Bar (25 kg)','ATE','Free Weights',40000,1,'Workout Area'),
(87,'Adjustable Bench','Hammer Strength','Various',25000,2,'Workout Area'),
(88,'Barbell Stand','Hammer Strength','Accessories',20000,2,'Workout Area'),
(89,'Flat Bench','Hammer Strength','Various',10000,2,'Workout Area'),
(90,'Small Bench','Hammer Strength','Various',10000,2,'Workout Area'),
(91,'Hyperextension','Hammer Strength','Back',10000,1,'Workout Area'),
(92,'Weightlifting Belt(S)','USI Universal','Accessories',1500,2,'Workout Area'),
(93,'Weightlifting Belt(M)','USI Universal','Accessories',1700,2,'Workout Area'),
(94,'Weightlifting Belt(L)','USI Universal','Accessories',2000,2,'Workout Area'),
(95,'Weightlifting Belt(XL)','USI Universal','Accessories',2500,2,'Workout Area'),
(96,'Lifting Lever Belt','Hack Athletics','Accessories',4000,1,'Workout Area'),
(97,'Barbell Collar lock','N/A','Accessories',300,20,'Workout Area'),
(98,'Monkey Bars','Hammer Strength','Various',50000,1,'Cardio Section'),
(99,'Punching Bag','USI Universal','Cardio',20000,1,'Cardio Section'),
(100,'D-Handle Latpulldown Bar','ATE','Back',2000,1,'Workout Area'),
(101,'Latpulldown Attachments','ATE','Back',10000,1,'Workout Area'),
(102,'Double D-handle','ATE','Various',2000,2,'Workout Area'),
(103,'Tricep Bar','N/A','Various',1000,2,'Workout Area'),
(104,'Tricep Ropes','N/A','Various',1000,2,'Workout Area'),
(105,'Machine Row','Hammer Strength','Back',40000,1,'Workout Area'),
(106,'Tricep Bar(V-Shape)','N/A','Various',1000,2,'Workout Area'),
(107,'Ez Tricep Bar','N/A','Various',1000,2,'Workout Area'),
(108,'Cable Crossover Handles','N/A','Various',250,2,'Workout Area'),
(109,'latpulldown Bar','N/A','Back',2000,1,'Workout Area'),
(110,'Attachments Rack','Hammer Strength','Accessories',5000,1,'Workout Area'),
(111,'Single D-handle','N/A','Various',250,2,'Workout Area'),
(112,'Functional Training Tyre','Xpeed','Cardio',100000,1,'Cardio Section'),
(113,'Gym Tyre(50 Kg)','Xpeed','Cardio',20000,2,'Cardio Section'),
(114,'Sledge Hammer','Kobo','Cardio',5000,2,'Cardio Section'),
(115,'Thigh Abductor','Hammer Strength','Legs',40000,1,'Workout Area'),
(116,'Dumbells (55kg)','Challenge','Free Weights',8250,1,'Workout Area'),
(117,'Dumbells (60 kg)','Challenge','Free Weights',9000,1,'Workout Area');
GO
select * from GymEquipments;
GO
--- 1. Inventory Quantity Tracking
SELECT 
    Name,
    Category,
    Quantity,
    Location
FROM GymEquipment
ORDER BY Quantity ASC;
GO
--- 2. Low Stock Alert System (Threshold = 3)
SELECT 
    Id,
    Name,
    Quantity,
    Location
FROM GymEquipment
WHERE Quantity < 3;

GO
---3.  Inventory Summary by Location
SELECT 
    Location,
    COUNT(*) AS TotalItems,
    SUM(Quantity) AS TotalQuantity,
    SUM(Price * Quantity) AS TotalValue
FROM GymEquipment
GROUP BY Location
ORDER BY TotalValue DESC;

GO
----4. Update Quantity of Equipment 
UPDATE GymEquipment
SET Quantity = Quantity + 3
WHERE Name = 'Treadmill';

GO
-----5. Simple View for Low Stock Equipment
CREATE VIEW LowStockEquipment AS
SELECT Id, Name, Quantity, Location
FROM GymEquipment
WHERE Quantity < 3;

Go
SELECT * FROM LowStockEquipment;







