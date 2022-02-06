DROP TABLE IF EXISTS TBL_INFORMATION;

CREATE TABLE TBL_INFORMATION
(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(250) NOT NULL,
    last_name   VARCHAR(250) NOT NULL,
    email       VARCHAR(250) DEFAULT NULL,
    details     VARCHAR(250) DEFAULT NULL,
    description VARCHAR(250) DEFAULT NULL
);

