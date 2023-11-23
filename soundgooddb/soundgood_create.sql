CREATE TABLE person (
 person_Id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 first_name VARCHAR(100) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 home_address VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL,
 phone_number VARCHAR(15) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_Id);


CREATE TABLE pricing_scheme (
 pricing_scheme_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 price_lesson_type VARCHAR(20),
 price_skill_level VARCHAR(20),
 sibling_discount VARCHAR(20),
 rental_fee VARCHAR(20)
);

ALTER TABLE pricing_scheme ADD CONSTRAINT PK_pricing_scheme PRIMARY KEY (pricing_scheme_id);


CREATE TABLE rented_instrument (
 rented_instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type VARCHAR(100),
 quantity VARCHAR(100) NOT NULL,
 brand VARCHAR(100)
);

ALTER TABLE rented_instrument ADD CONSTRAINT PK_rented_instrument PRIMARY KEY (rented_instrument_id);


CREATE TABLE student (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level VARCHAR(12),
 payment FLOAT(20),
 person_Id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE contact_person (
 student_id INT NOT NULL,
 first_name VARCHAR(100) NOT NULL,
 last_name VARCHAR(200) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 email VARCHAR(100)
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (student_id);


CREATE TABLE instructor (
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 salary FLOAT(20),
 person_Id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE lesson (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 place VARCHAR(100),
 pricing_scheme_id INT NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE rental (
 rental_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 rental_date DATE NOT NULL,
 rental_surpassed BOOLEAN NOT NULL,
 student_id INT NOT NULL,
 rented_instrument_id INT NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (rental_id);


CREATE TABLE sibling (
 student_id INT NOT NULL,
 person_number VARCHAR(12)
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (student_id);


CREATE TABLE student_lesson (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


CREATE TABLE ensemble (
 lesson_id INT NOT NULL,
 num_of_students INT,
 genre VARCHAR(100),
 max_students INT,
 min_students INT,
 time_slot TIMESTAMP(6)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id INT NOT NULL,
 instrument VARCHAR(100),
 num_of_students INT,
 min_students INT,
 skill_level VARCHAR(12),
 time_slot TIMESTAMP(6)
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual_lesson (
 lesson_id INT NOT NULL,
 instrument VARCHAR(100),
 skill_level VARCHAR(12),
 appointment_time TIMESTAMP(6)
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (lesson_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_Id) REFERENCES person (person_Id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_Id) REFERENCES person (person_Id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (pricing_scheme_id) REFERENCES pricing_scheme (pricing_scheme_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY (rented_instrument_id) REFERENCES rented_instrument (rented_instrument_id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE;


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE;


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE;


