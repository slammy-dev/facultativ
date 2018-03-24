CREATE SCHEMA test;

CREATE TABLE test.users (
  userId   INT AUTO_INCREMENT,
  email    VARCHAR(45)  NOT NULL UNIQUE,
  pass     VARCHAR(244) NOT NULL,
  name     VARCHAR(45),
  lastName VARCHAR(45),
  role     VARCHAR(45)  NOT NULL,
  PRIMARY KEY (userId)
);

CREATE TABLE test.courses (
  courseId   INT AUTO_INCREMENT,
  name       VARCHAR(45) NOT NULL,
  tutorId    INT         NOT NULL,
  annotation VARCHAR(255),
  status     VARCHAR(45),
  PRIMARY KEY (courseId),
  FOREIGN KEY (tutorId) REFERENCES test.users (userId)
);

CREATE TABLE test.student_course (
  id              INT AUTO_INCREMENT,
  courseId        INT NOT NULL,
  studentId       INT NOT NULL,
  studentMark     INT,
  studentFeedback VARCHAR(255),
  PRIMARY KEY (id),
  FOREIGN KEY (studentId) REFERENCES test.users (userId),
  FOREIGN KEY (courseId) REFERENCES test.courses (courseId)
);

INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE)
VALUES (1, 's1@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Ivan', 'Ivanov', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (2, 's2@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Zefir', 'Marmeladov', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (3, 't1@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Tutor', 'Tutorialov', 'tutor');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (4, 't2@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Tutor2', 'Tutorialov2', 'tutor');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (5, 's3@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Denis', 'Kotelnikov', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE)
VALUES (6, 's4@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Egor', 'Vyrva', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (7, 's5@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Evgeniy', 'Krysenko', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE)
VALUES (8, 's6@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Igor', 'Balabaev', 'student');
INSERT INTO TEST.USERS (USERID, EMAIL, PASS, NAME, LASTNAME, ROLE) VALUES
  (9, 't3@mail.ru', '$2a$05$yJyr/jn9Fppmpy.9xd.gcOMqbzW/R4IMrKJhsqN/fvRjt4siXFnPG', 'Grigory', 'Rasputin', 'tutor');

INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (1, 'History of Uganda', 3, 'Cource about history of Uganda', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (2, 'Java', 3, 'How to write code like a real patsan', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (3, 'Git', 4, 'Learn Git branching', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (4, 'Jedi', 9, 'How to fight like a jedi', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (5, 'Street racing', 4, 'Just don''t drive into the wall', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (6, 'Paleontology ', 3, 'Paleontology for python developers', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (7, 'Composers of 15th century', 3, 'Influence of Franz Schubert to nowadays music', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (8, 'Mimicry', 4, 'How to look like a tree', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (9, 'Bada-boom', 9, 'Short history of magic', 'planned');
INSERT INTO TEST.COURSES (COURSEID, NAME, TUTORID, ANNOTATION, STATUS)
VALUES (10, 'Big bada-boom!', 9, 'Long history of magic', 'planned');