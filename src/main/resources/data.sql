-- id INT AUTO_INCREMENT  PRIMARY KEY,
--                                first_name VARCHAR(250) NOT NULL,
--                                last_name VARCHAR(250) NOT NULL,
--                                email VARCHAR(250) DEFAULT NULL,
--                                details VARCHAR(250) DEFAULT NULL,
--                                description VARCHAR(250) DEFAULT NULL

INSERT INTO TBL_INFORMATION (first_name, last_name, email, details, description)
VALUES ('Robert', 'Frost', 'rjf@gmail.com', 'Very few details know about this man',
        'Frost died in Boston on January 29, 1963, of complications from prostate surgery.'),
       ('Duke', 'O-Null', 'dike@email.com', 'Duke is the man', 'This is unbelievable'),
       ('Large', 'Fries', 'mcd@marvel.com', 'This is usually furnished with plenty of salt',
        'This is not two all beef patties.');
