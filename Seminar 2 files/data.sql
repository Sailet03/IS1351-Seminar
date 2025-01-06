INSERT INTO Student (studentId,personalNumber,name,lessonsTaken,instrumentsRented,street,city,zip,phoneNumber,emailAdress)
VALUES
  (1,'200508138474','Reed Sanchez',4,2,'391-3649 Arcu Rd.','Marabá','37725-47191','(213) 861-6973','euismod@hotmail.ca'),
  (2,'199705011756','Jolene Cain',9,2,'335-7658 Lacinia. Rd.','Wunstorf','6598','(720) 263-2026','ipsum.cursus@outlook.ca'),
  (3,'200712248540','Jasper Herrera',4,2,'900-7739 Arcu. St.','Caucaia','596853','1-469-998-1187','iaculis.enim.sit@google.couk'),
  (4,'201611130674','Isabelle Williamson',1,0,'326-6102 Ut Road','Liberia','25759','(857) 471-5168','a.neque.nullam@icloud.couk'),
  (5,'198801221395','Sheila Battle',8,1,'P.O. Box 860, 4263 Nulla Road','Awka','4778','1-999-854-8244','a@icloud.couk'),  
  (6,'201506158356','Brady Ramos',3,2,'8635 Erat Street','Ludvika','33175','(572) 393-0312','amet@protonmail.couk'),
  (7,'201408057295','Devin Sweet',5,1,'P.O. Box 210, 5549 Elit Road','Norrköping','36115','1-392-682-2028','cursus@icloud.ca'),
  (8,'200911010516','Hiroko Sykes',1,1,'2635 Nec, Rd.','Norrköping','64441','(486) 286-6482','dolor.fusce@google.couk');
  
INSERT INTO Siblings (siblingStudentId,studentId)
VALUES
  (1,3),
  (1,4),
  (3,4),
  (2,5);

INSERT INTO ContactPerson (contactId,personalNumber,name,street,city,zip,phoneNumber,emailAdress)
VALUES
  (1,'199504168576','Rhiannon Velez','298-1791 Non, Street','Guizhou','47417','1-377-170-1418','donec@yahoo.ca'),
  (2,'198503217563','Leigh Rice','131-8093 Interdum St.','Judenburg','63707','(983) 417-0782','morbi.accumsan.laoreet@hotmail.edu'),
  (3,'198711188501','Lynn Sutton','962-734 Urna Rd.','Dandenong','7772-7832','(560) 515-2563','lorem@protonmail.couk'),
  (4,'199005121845','Indira Faulkner','481-5526 Bibendum Rd.','Moere','750825','(212) 662-1522','ultricies.dignissim.lacus@protonmail.edu'),
  (5,'198912248360','Kellie Bernard','P.O. Box 502, 7224 Vivamus Road','Aguacaliente (San Francisco]','586686','(944) 978-6256','lorem@aol.com');
  
INSERT INTO StudentContactPerson (studentId,contactId)
VALUES
  (1,3),
  (1,4),
  (2,1),
  (4,3),
  (5,2),
  (5,5);
  

INSERT INTO Teacher (teacherId,personalNumber,name,lessonsGiven,street,city,zip,phoneNumber,emailAdress)
VALUES  
  (1,'198501150647','Myles Gamble',8,'Ap #157-5045 Et St.','Bischofshofen','42528','1-418-687-4755','laoreet.lectus@google.org'),
  (2,'197704210683','Cheryl Farmer',2,'Ap #189-8715 Habitant Street','Camiña','61312','1-899-205-2246','integer.urna@hotmail.com'),
  (3,'199912147593','Zelda Booth',9,'1694 Enim Avenue','Marabá','24813','(825) 828-7027','risus.a@yahoo.net'),
  (4,'200011061956','Shellie Graves',5,'P.O. Box 770, 2614 Nibh. Rd.','Caen','71893','1-506-872-9188','in.sodales.elit@aol.couk'),
  (5,'198905071753','Beatrice Reese',3,'P.O. Box 511, 5069 Sapien, St.','Vereeniging','57156','(317) 587-8305','id.enim@google.ca');
  
  
INSERT INTO TeachingInstrument (teacherId,instrument)
VALUES 
  (1,'Violin'),
  (1,'Nyckelharpa'),
  (2,'Cello'),
  (3,'Trumpet'),
  (4,'Trombone'),
  (5,'Flute');
  
  
INSERT INTO Instrument (instrumentId,typeOfInstrument,brand,price)
VALUES
  (1,'Violin','StringWorks',318),
  (2,'Violin','StringWorks',318),
  (3,'Violin','StringWorks',318),
  (4,'Cello','StringWorks',375),
  (5,'Cello','StringWorks',375),
  (6,'Cello','StringWorks',375),
  (7,'Trumpet','Yamaha',379),
  (8,'Trombone','Yamaha',318),
  (9,'Flute','Yamaha',263),
  (10,'Nyckelharpa','-',233);
  
INSERT INTO InstrumentRental (rentalId,date,instrumentId,studentId)
VALUES
  (1,'Jul 29, 2024',1,5),
  (2,'Nov 11, 2024',10,5),
  (3,'May 2, 2024',7,3),
  (4,'Jun 3, 2024',2,1),
  (5,'Apr 1, 2025',6,2);


INSERT INTO Room (roomId,roomNumber)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);


INSERT INTO IndividualLesson (lessonId,instrument,skillLevel,roomId,teacherId)
VALUES
  (1,'Cello','Beginner',3,2),
  (2,'Violin','Intermidiate',2,1),
  (3,'Trumpet','Advanced',4,3),
  (4,'Nyckelharpa','Advanced',1,1),
  (5,'Violin','Beginner',10,1);
  
INSERT INTO GroupLesson (lessonId,instrument,maxStudents,minStudents,skillLevel,roomId,teacherId)
VALUES
  (1,'Violin',4,2,'Beginner',5,1),
  (2,'Trumpet',4,2,'Advanced',5,3),
  (3,'Cello',4,2,'Beginner',5,2);
  
INSERT INTO Ensamble (lessonId,genre,maxStudents,minStudents,skillLevel,roomId,teacherId)
VALUES
  (1,'Clasic',20,5,'Beginner',7,1),
  (2,'Brass',4,2,'Intermideate',7,3),
  (3,'Folkmusic',4,2,'Intermideate',7,1);
  
  
  
INSERT INTO Booking (bookingId,date,studentId,induvidualLessonId,price)
VALUES
  (1,'Nov 8, 2025',2,1,150),
  (2,'May 1, 2025',5,2,100),
  (3,'Jun 30, 2025',3,3,200),
  (4,'Oct 28, 2025',5,4,200),
  (5,'Apr 3, 2024',1,5,100);
  
INSERT INTO Booking (bookingId,date,studentId,groupLessonId,price)
VALUES
  (6,'Jul 10, 2024',2,1,100),
  (7,'Jan 21, 2025',5,1,100),
  (8,'Sep 5, 2023',1,2,200),
  (9,'Aug 2, 2025',3,3,100);
  
INSERT INTO Booking (bookingId,date,studentId,ensambleId,price)
VALUES
  (10,'Jun 18, 2023',2,1,100),
  (11,'Jun 18, 2023',5,1,100),
  (12,'Jun 18, 2023',3,1,100),
  (13,'Dec 17, 2023',1,2,200),
  (14,'Dec 17, 2023',4,2,200),
  (15,'Jun 15, 2023',4,3,200);
  
  

  

