CREATE TABLE Booking (
 bookingId INT NOT NULL,
 date TIMESTAMP(10) NOT NULL,
 studentId INT NOT NULL,
 ensambleId INT,
 groupLessonId INT,
 induvidualLessonId INT,
 price INT NOT NULL
);

ALTER TABLE Booking ADD CONSTRAINT PK_Booking PRIMARY KEY (bookingId);


CREATE TABLE ContactPerson (
 contactId INT NOT NULL,
 personalNumber VARCHAR(100) NOT NULL,
 name VARCHAR(100) NOT NULL,
 street VARCHAR(100),
 city VARCHAR(100),
 zip VARCHAR(100),
 phoneNumber VARCHAR(100),
 emailAdress VARCHAR(100)
);

ALTER TABLE ContactPerson ADD CONSTRAINT PK_ContactPerson PRIMARY KEY (contactId);


CREATE TABLE Ensamble (
 lessonId INT NOT NULL,
 genre VARCHAR(100) NOT NULL,
 maxStudents INT NOT NULL,
 minStudents INT NOT NULL,
 skillLevel VARCHAR(100),
 roomId INT NOT NULL,
 teacherId INT NOT NULL
);

ALTER TABLE Ensamble ADD CONSTRAINT PK_Ensamble PRIMARY KEY (lessonId);


CREATE TABLE GroupLesson (
 lessonId INT NOT NULL,
 instrument VARCHAR(100) NOT NULL,
 maxStudents INT NOT NULL,
 minStudents INT NOT NULL,
 skillLevel VARCHAR(100),
 roomId INT NOT NULL,
 teacherId INT NOT NULL
);

ALTER TABLE GroupLesson ADD CONSTRAINT PK_GroupLesson PRIMARY KEY (lessonId);


CREATE TABLE IndividualLesson (
 lessonId INT NOT NULL,
 instrument VARCHAR(100) NOT NULL,
 skillLevel VARCHAR(100),
 roomId INT NOT NULL,
 teacherId INT NOT NULL
);

ALTER TABLE IndividualLesson ADD CONSTRAINT PK_IndividualLesson PRIMARY KEY (lessonId);


CREATE TABLE Instrument (
 instrumentId INT NOT NULL,
 typeOfInstrument VARCHAR(100) NOT NULL,
 brand VARCHAR(100) NOT NULL,
 price INT NOT NULL
);

ALTER TABLE Instrument ADD CONSTRAINT PK_Instrument PRIMARY KEY (instrumentId);


CREATE TABLE Room (
 roomId INT NOT NULL,
 roomNumber INT NOT NULL
);

ALTER TABLE Room ADD CONSTRAINT PK_Room PRIMARY KEY (roomId);


CREATE TABLE Student (
 studentId INT NOT NULL,
 personalNumber VARCHAR(12) NOT NULL,
 name VARCHAR(100) NOT NULL,
 lessonsTaken VARCHAR(100) NOT NULL,
 instrumentsRented INT,
 street VARCHAR(100),
 city VARCHAR(100),
 zip VARCHAR(100),
 phoneNumber VARCHAR(100),
 emailAdress VARCHAR(100)
);

ALTER TABLE Student ADD CONSTRAINT PK_Student PRIMARY KEY (studentId);


CREATE TABLE StudentContactPerson (
 studentId INT NOT NULL,
 contactId INT NOT NULL
);

ALTER TABLE StudentContactPerson ADD CONSTRAINT PK_StudentContactPerson PRIMARY KEY (studentId,contactId);


CREATE TABLE Teacher (
 teacherId INT NOT NULL,
 personalNumber VARCHAR(100) NOT NULL,
 name VARCHAR(100) NOT NULL,
 lessonsGiven INT,
 street VARCHAR(100),
 city VARCHAR(100),
 zip VARCHAR(100),
 phoneNumber VARCHAR(100),
 emailAdress VARCHAR(100)
);

ALTER TABLE Teacher ADD CONSTRAINT PK_Teacher PRIMARY KEY (teacherId);


CREATE TABLE TeachingInstrument (
 teacherId INT NOT NULL,
 instrument VARCHAR(100) NOT NULL
);

ALTER TABLE TeachingInstrument ADD CONSTRAINT PK_TeachingInstrument PRIMARY KEY (teacherId,instrument);


CREATE TABLE InstrumentRental (
 rentalId INT NOT NULL,
 date TIMESTAMP(10) NOT NULL,
 instrumentId INT NOT NULL,
 studentId INT NOT NULL
);

ALTER TABLE InstrumentRental ADD CONSTRAINT PK_InstrumentRental PRIMARY KEY (rentalId);


CREATE TABLE Siblings (
 siblingStudentId INT NOT NULL,
 studentId INT NOT NULL
);

ALTER TABLE Siblings ADD CONSTRAINT PK_Siblings PRIMARY KEY (siblingStudentId,studentId);


ALTER TABLE Booking ADD CONSTRAINT FK_Booking_0 FOREIGN KEY (studentId) REFERENCES Student (studentId);
ALTER TABLE Booking ADD CONSTRAINT FK_Booking_1 FOREIGN KEY (ensambleId) REFERENCES Ensamble (lessonId);
ALTER TABLE Booking ADD CONSTRAINT FK_Booking_2 FOREIGN KEY (groupLessonId) REFERENCES GroupLesson (lessonId);
ALTER TABLE Booking ADD CONSTRAINT FK_Booking_3 FOREIGN KEY (induvidualLessonId) REFERENCES IndividualLesson (lessonId);


ALTER TABLE Ensamble ADD CONSTRAINT FK_Ensamble_0 FOREIGN KEY (roomId) REFERENCES Room (roomId);
ALTER TABLE Ensamble ADD CONSTRAINT FK_Ensamble_2 FOREIGN KEY (teacherId) REFERENCES Teacher (teacherId);


ALTER TABLE GroupLesson ADD CONSTRAINT FK_GroupLesson_0 FOREIGN KEY (roomId) REFERENCES Room (roomId);
ALTER TABLE GroupLesson ADD CONSTRAINT FK_GroupLesson_2 FOREIGN KEY (teacherId) REFERENCES Teacher (teacherId);


ALTER TABLE IndividualLesson ADD CONSTRAINT FK_IndividualLesson_0 FOREIGN KEY (roomId) REFERENCES Room (roomId);
ALTER TABLE IndividualLesson ADD CONSTRAINT FK_IndividualLesson_2 FOREIGN KEY (teacherId) REFERENCES Teacher (teacherId);


ALTER TABLE StudentContactPerson ADD CONSTRAINT FK_StudentContactPerson_0 FOREIGN KEY (studentId) REFERENCES Student (studentId);
ALTER TABLE StudentContactPerson ADD CONSTRAINT FK_StudentContactPerson_1 FOREIGN KEY (contactId) REFERENCES ContactPerson (contactId);


ALTER TABLE TeachingInstrument ADD CONSTRAINT FK_TeachingInstrument_0 FOREIGN KEY (teacherId) REFERENCES Teacher (teacherId);


ALTER TABLE InstrumentRental ADD CONSTRAINT FK_InstrumentRental_0 FOREIGN KEY (instrumentId) REFERENCES Instrument (instrumentId);
ALTER TABLE InstrumentRental ADD CONSTRAINT FK_InstrumentRental_1 FOREIGN KEY (studentId) REFERENCES Student (studentId);


ALTER TABLE Siblings ADD CONSTRAINT FK_Siblings_0 FOREIGN KEY (studentId) REFERENCES Student (studentId);


