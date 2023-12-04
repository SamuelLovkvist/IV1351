---person(15)---
INSERT INTO person (person_number,first_name,last_name,home_address,email,phone_number)
VALUES
  (1,'Sylvia','Allen','286-9406 Adipiscing. Av.','s_allen9757@hotmail.net','0754544533'),
  (2,'Nelle','Cox','337-5215 Eleifend. Rd.','ncox2532@aol.ca','0774154796'),
  (3,'Marsden','Armstrong','P.O. Box 340, 3229 Molestie Av.','armstrong.marsden@google.couk','0756277817'),
  (4,'Rudyard','Kent','408-6188 Facilisi. Av.','r-kent@icloud.couk','0743043134'),
  (5,'Carlos','Boone','121-6303 Libero Rd.','boonecarlos6180@aol.org','0717987326'),
  (6,'Jennifer','Maldonado','Ap #679-9245 Fusce Av.','maldonado.jennifer@icloud.edu','0756744641'),
  (7,'Louis','Nash','3201 Tincidunt. St.','l_nash9280@aol.edu','0743564541'),
  (8,'Vera','Hull','802-532 Arcu Road','vera.hull@yahoo.net','0722263362'),
  (9,'Adrienne','Mathis','2439 Nibh Road','m_adrienne4069@hotmail.com','0751857927'),
  (10,'Anika','Wall','Ap #281-8771 Lacus. Ave','wanika@hotmail.edu','0768332241');
INSERT INTO person (person_number,first_name,last_name,home_address,email,phone_number)
VALUES
  (11,'Illana','Pratt','P.O. Box 602, 4138 Eget Avenue','ipratt833@google.net','0747761274'),
  (12,'Boris','Whitney','P.O. Box 453, 531 Nunc Ave','boris-whitney@yahoo.edu','0761734016'),
  (13,'Kerry','Joyce','611-3406 Tincidunt Ave','k.joyce9780@protonmail.org','0768201134'),
  (14,'Olivia','Armstrong','487 Interdum Road','armstrong-olivia373@aol.org','0782325767'),
  (15,'Keaton','Briggs','P.O. Box 740, 7393 Adipiscing St.','keaton_briggs2287@protonmail.com','0755624735');

---pricing_scheme(1)---
INSERT INTO pricing_scheme (price_lesson_type,price_skill_level,sibling_discount,rental_fee)
VALUES
  ('400,200,100','200,200,400',0.2,100);


---rented_instrument(4)---
  INSERT INTO rented_instrument (instrument_type,quantity,brand)
VALUES
  ('Banjo',29,'Orci Luctus PC'),
  ('Flute',0,'Aliquam Nisl Limited'),
  ('Guitar',11,'Donec LLC'),
  ('Drums',1,'Mauris Nulla Company');

---skill_level(3)---
INSERT INTO skill_level (skill_level)
VALUES
    ('Beginner'),
    ('Intermediate'),
    ('Advanced');

---student(11)---
INSERT INTO student (skill_level_id,payment,person_id,instruments_rented)
VALUES
  (1,0,1,0),
  (3,0,2,0),
  (1,0,3,1),
  (2,0,4,0),
  (3,0,5,0),
  (1,0,6,1),
  (1,0,7,0),
  (2,0,8,2),
  (2,0,9,0),
  (2,0,10,1);
INSERT INTO student (skill_level_id,payment,person_id,instruments_rented)
VALUES
  (3,0,11,0);

---contact_person(11)------
INSERT INTO contact_person (student_id,first_name,last_name,phone_number,email)
VALUES
  (1,'Genevieve','Spears','0763684578','s-genevieve3072@hotmail.net'),
  (2,'Grant','Knowles','0711611552','g-knowles5298@yahoo.org'),
  (3,'Declan','Cantrell','0742893267','declan.cantrell@yahoo.edu'),
  (4,'Lewis','Jennings','0722471672','lewisjennings@yahoo.com'),
  (5,'Francis','Carpenter','0767681473','f_carpenter@outlook.net'),
  (6,'Mari','Harris','0704691182','mharris8135@google.net'),
  (7,'Maite','Hanson','0738108218','m.hanson@protonmail.com'),
  (8,'Rebekah','Estrada','0751012752','estrada_rebekah@icloud.couk'),
  (9,'Kimberley','Gomez','0723889267','k_gomez@hotmail.net'),
  (10,'Kalia','Atkinson','0727466852','k-atkinson9066@outlook.edu');
INSERT INTO contact_person (student_id,first_name,last_name,phone_number,email)
VALUES
  (11,'Hammett','Mccall','0724178891','m-hammett6795@protonmail.net');

---instructor(4)-----
INSERT INTO instructor (salary,person_id,teaches_ensemble)
VALUES
  (0,12,'False'),
  (0,13,'False'),
  (0,14,'True'),
  (0,15,'False');

---lesson(8)----
INSERT INTO lesson (place,pricing_scheme_id,instructor_id,time_slot)
VALUES
  ('SalC',1,1,'2023-11-28 16:15:00'),
  ('SalD',1,3,'2023-11-22 14:30:00'),
  ('SalE',1,4,'2023-11-30 10:30:00'),
  ('SalG',1,3,'2023-12-08 14:00:00'),
  ('SalB',1,2,'2023-12-02 19:00:00'),
  ('SalF',1,3,'2023-12-13 15:30:00'),
  ('SalG',1,3,'2023-12-11 10:15:00'),
  ('SalF',1,3,'2023-12-12 13:30:00');

---rental(5)---
INSERT INTO rental (rental_date,rental_surpassed,student_id,rented_instrument_id,pricing_scheme_id)
VALUES
  ('Feb 17, 2023','True',3,1,1),
  ('Jul 29, 2023','True',6,2,1),
  ('Sep 26, 2023','False',8,3,1),
  ('Apr 27, 2024','False',10,4,1),
  ('Dec 8, 2024','False',8,1,1);

---sibling(6)---
INSERT INTO sibling (student1_id,student2_id)
VALUES
  (1,3),
  (2,7),
  (8,6),
  (9,11),
  (9,10),
  (10,11);

---student_lesson(11)---
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  ---individual---
  (2,1),
  ---ensemble(5)---
  (5,2),
  (3,2),
  (6,2),
  (7,2),
  (11,2),
  ---individual---
  (1,3),
  ---group(3)---
  (4,4),
  (8,4),
  (9,4),
  ---individual---
  (10,5),
  ---ensemble(11)---
  (1,6),
  (2,6),
  (3,6),
  (4,6),
  (5,6),
  (6,6),
  (7,6),
  (8,6),
  (9,6),
  (10,6),
  (11,6),
  ---ensemble(9)---
  (1,7),
  (2,7),
  (3,7),
  (4,7),
  (5,7),
  (6,7),
  (7,7),
  (8,7),
  (9,7),
  ---ensemble(5 people)---
  (1,8),
  (2,8),
  (3,8),
  (4,8),
  (5,8);


---ensemble(4)----
INSERT INTO ensemble (lesson_id,num_of_students,genre,max_students,min_students)
VALUES
  (2,5,'Phonk',11,5),
  (6,11,'Rock',11,5),
  (7,9,'Hardstyle',11,5),
  (8,5,'Reggae',11,5);


---group_lesson(1)---
INSERT INTO group_lesson (lesson_id,instrument,num_of_students,min_students,skill_level_id)
VALUES
  (4,'Piano',3,3,2);

---individual_lesson(4)----
INSERT INTO individual_lesson (lesson_id,instrument,skill_level_id)
VALUES
  (1,'Bass',3),
  (3,'Piano',1),
  (5,'Piano',2);