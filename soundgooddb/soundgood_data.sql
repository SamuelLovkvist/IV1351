-----person(15)-----
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

-----pricing_scheme-----
INSERT INTO pricing_scheme (price_lesson_type,price_skill_level,sibling_discount,rental_fee)
VALUES
  ('400,200,100','200,200,400',0.2,100);


----rented_instrument(4)-----
  INSERT INTO rented_instrument (instrument_type,quantity,brand)
VALUES
  ('Banjo','29','Orci Luctus PC'),
  ('Flute','0','Aliquam Nisl Limited'),
  ('Guitar','11','Donec LLC'),
  ('Drums','1','Mauris Nulla Company');

---student(11)---
INSERT INTO student (skill_level,payment,person_id)
VALUES
  ('Advanced',0,1),
  ('Intermediate',0,2),
  ('Beginner',0,3),
  ('Beginner',0,4),
  ('Advanced',0,5),
  ('Intermediate',0,6),
  ('Intermediate',0,7),
  ('Advanced',0,8),
  ('Intermediate',0,9),
  ('Beginner',0,10);
INSERT INTO student (skill_level,payment,person_id)
VALUES
  ('Advanced',0,11);

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
INSERT INTO instructor (salary,person_id)
VALUES
  (0,12),
  (0,13),
  (0,14),
  (0,15);

---lesson(5)----
INSERT INTO lesson (place,pricing_scheme_id,instructor_id)
VALUES
  ('SalC',1,1),
  ('SalD',1,3),
  ('SalE',1,4),
  ('SalG',1,3),
  ('SalB',1,2);

---rental(4)---
INSERT INTO rental (rental_date,rental_surpassed,student_id,rented_instrument_id)
VALUES
  ('Jul 17, 2023','False',3,1),
  ('Sep 29, 2024','True',6,2),
  ('Feb 26, 2024','True',8,3),
  ('Apr 27, 2023','False',10,4);

---sibling(4)---
INSERT INTO sibling (student_id,person_number)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4);

---student_lesson(11)---
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (2,1),
  (5,2),
  (3,2),
  (6,2),
  (7,2),
  (11,2),
  (1,3),
  (4,4),
  (8,4),
  (9,4),
  (10,5);

---ensemble(1)----
INSERT INTO ensemble (lesson_id,num_of_students,genre,max_students,min_students,time_slot)
VALUES
  (2,5,'Phonk',20,5,'2023-11-22 14:30:00');


---group_lesson(1)---
INSERT INTO group_lesson (lesson_id,instrument,num_of_students,min_students,skill_level,time_slot)
VALUES
  (4,'Piano',3,3,'Intermediate','2023-12-08 14:00:00');

---individual_lesson(4)----
INSERT INTO individual_lesson (lesson_id,instrument,skill_level,appointment_time)
VALUES
  (1,'Bass','Intermediate','2023-11-28 16:15:00'),
  (3,'Piano','Beginner','2023-11-30 10:30:00'),
  (5,'Piano','Intermediate','2023-12-02 19:00:00');