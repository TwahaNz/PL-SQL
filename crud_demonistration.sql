/*
  Demonistrating simple CRUD operations
*/

/*
  DROP the team table if it already exists
*/

DROP TABLE team;

--Create the Team table

CREATE TABLE team
(
  user_id INT NOT NULL,
  u_name VARCHAR2(20) NOT NULL,
  u_pass VARCHAR2(20) NOT NULL,
  contact_no VARCHAR2(20) NOT NULL,
  CONSTRAINT user_id_pk PRIMARY KEY (user_id)
);


--Insert values into the Team table

INSERT INTO team VALUES(01011, 'PETER', '12345', '0845124548');
INSERT INTO team VALUES(01012, 'JOHN', '52312', '0251584554');
INSERT INTO team VALUES(01013, 'TOM', '1jskaa', '0845456666');
INSERT INTO team VALUES(01014, 'PATRICK', '1fa44', '1454587');

SELECT *
FROM team;

SELECT u_name
FROM team
WHERE user_id > 01012;

--Update a row in the Team table

UPDATE team
SET contact_no = '023545458'
WHERE user_id = 01011;

SELECT *
FROM team;


--Remove a row from the table

DELETE
FROM team
WHERE user_id = 1014;

SELECT *
FROM team;



