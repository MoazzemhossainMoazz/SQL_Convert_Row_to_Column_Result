


----------------------------SQL Create Table Query------------------------------------------------

CREATE TABLE Contacts (
    id INT PRIMARY KEY,
    name NVARCHAR(100),
    phone_number NVARCHAR(15),
    details NVARCHAR(MAX)
);

--------------------------------- Insert Query----------------------------------------------------

INSERT INTO Contacts (id, name, phone_number, details) VALUES
(1, 'John Doe', '123-456-7890', '123Friend from college'),
(2, 'Jane Smith', '987-654-3210', 'Work colleague56'), 
(3, 'Alice Johnson', '555-123-4567', 'Neighbor852 Family friend'),
(4, 'Bob Brown', '444-987-6543', 'Family friend');

--------------------------- Query to count individual letters in the details column-----------------------
SELECT
    id,
    details,
    LEN(details) - LEN(REPLACE(LOWER(details), 'a', '')) AS Count_A,
    LEN(details) - LEN(REPLACE(LOWER(details), 'b', '')) AS Count_B,
    LEN(details) - LEN(REPLACE(LOWER(details), 'c', '')) AS Count_C,
    LEN(details) - LEN(REPLACE(LOWER(details), 'd', '')) AS Count_D,
    LEN(details) - LEN(REPLACE(LOWER(details), 'e', '')) AS Count_E,
    LEN(details) - LEN(REPLACE(LOWER(details), 'f', '')) AS Count_F,
    LEN(details) - LEN(REPLACE(LOWER(details), 'g', '')) AS Count_G,
    LEN(details) - LEN(REPLACE(LOWER(details), 'h', '')) AS Count_H,
    LEN(details) - LEN(REPLACE(LOWER(details), 'i', '')) AS Count_I,
    LEN(details) - LEN(REPLACE(LOWER(details), 'j', '')) AS Count_J,
    LEN(details) - LEN(REPLACE(LOWER(details), 'k', '')) AS Count_K,
    LEN(details) - LEN(REPLACE(LOWER(details), 'l', '')) AS Count_L,
    LEN(details) - LEN(REPLACE(LOWER(details), 'm', '')) AS Count_M,
    LEN(details) - LEN(REPLACE(LOWER(details), 'n', '')) AS Count_N,
    LEN(details) - LEN(REPLACE(LOWER(details), 'o', '')) AS Count_O,
    LEN(details) - LEN(REPLACE(LOWER(details), 'p', '')) AS Count_P,
    LEN(details) - LEN(REPLACE(LOWER(details), 'q', '')) AS Count_Q,
    LEN(details) - LEN(REPLACE(LOWER(details), 'r', '')) AS Count_R,
    LEN(details) - LEN(REPLACE(LOWER(details), 's', '')) AS Count_S,
    LEN(details) - LEN(REPLACE(LOWER(details), 't', '')) AS Count_T,
    LEN(details) - LEN(REPLACE(LOWER(details), 'u', '')) AS Count_U,
    LEN(details) - LEN(REPLACE(LOWER(details), 'v', '')) AS Count_V,
    LEN(details) - LEN(REPLACE(LOWER(details), 'w', '')) AS Count_W,
    LEN(details) - LEN(REPLACE(LOWER(details), 'x', '')) AS Count_X,
    LEN(details) - LEN(REPLACE(LOWER(details), 'y', '')) AS Count_Y,
    LEN(details) - LEN(REPLACE(LOWER(details), 'z', '')) AS Count_Z,
	LEN(details) - LEN(REPLACE(details, '0', '')) AS Count_0,
	LEN(details) - LEN(REPLACE(details, '1', '')) AS Count_1,
	LEN(details) - LEN(REPLACE(details, '2', '')) AS Count_2,
    LEN(details) - LEN(REPLACE(details, '3', '')) AS Count_3,
    LEN(details) - LEN(REPLACE(details, '4', '')) AS Count_4,
    LEN(details) - LEN(REPLACE(details, '5', '')) AS Count_5,
    LEN(details) - LEN(REPLACE(details, '6', '')) AS Count_6,
    LEN(details) - LEN(REPLACE(details, '7', '')) AS Count_7,
    LEN(details) - LEN(REPLACE(details, '8', '')) AS Count_8,
    LEN(details) - LEN(REPLACE(details, '9', '')) AS Count_9,
	LEN(REPLACE(REPLACE(REPLACE(details, ' ', ''), ',', ''), '.', '')) AS letter_count
FROM Contacts
where id = 3;

------------------------Convert Row to Column wise Process------------------------------------

SELECT title, count
FROM (
    SELECT
        id,
        details, 
        LEN(details) - LEN(REPLACE(LOWER(details), 'a', '')) AS Count_A,
        LEN(details) - LEN(REPLACE(LOWER(details), 'b', '')) AS Count_B,
        LEN(details) - LEN(REPLACE(LOWER(details), 'c', '')) AS Count_C,
        LEN(details) - LEN(REPLACE(LOWER(details), 'd', '')) AS Count_D,
        LEN(details) - LEN(REPLACE(LOWER(details), 'e', '')) AS Count_E,
        LEN(details) - LEN(REPLACE(LOWER(details), 'f', '')) AS Count_F,
        LEN(details) - LEN(REPLACE(LOWER(details), 'g', '')) AS Count_G,
        LEN(details) - LEN(REPLACE(LOWER(details), 'h', '')) AS Count_H,
        LEN(details) - LEN(REPLACE(LOWER(details), 'i', '')) AS Count_I,
        LEN(details) - LEN(REPLACE(LOWER(details), 'j', '')) AS Count_J,
        LEN(details) - LEN(REPLACE(LOWER(details), 'k', '')) AS Count_K,
        LEN(details) - LEN(REPLACE(LOWER(details), 'l', '')) AS Count_L,
        LEN(details) - LEN(REPLACE(LOWER(details), 'm', '')) AS Count_M,
        LEN(details) - LEN(REPLACE(LOWER(details), 'n', '')) AS Count_N,
        LEN(details) - LEN(REPLACE(LOWER(details), 'o', '')) AS Count_O,
        LEN(details) - LEN(REPLACE(LOWER(details), 'p', '')) AS Count_P,
        LEN(details) - LEN(REPLACE(LOWER(details), 'q', '')) AS Count_Q,
        LEN(details) - LEN(REPLACE(LOWER(details), 'r', '')) AS Count_R,
        LEN(details) - LEN(REPLACE(LOWER(details), 's', '')) AS Count_S,
        LEN(details) - LEN(REPLACE(LOWER(details), 't', '')) AS Count_T,
        LEN(details) - LEN(REPLACE(LOWER(details), 'u', '')) AS Count_U,
        LEN(details) - LEN(REPLACE(LOWER(details), 'v', '')) AS Count_V,
        LEN(details) - LEN(REPLACE(LOWER(details), 'w', '')) AS Count_W,
        LEN(details) - LEN(REPLACE(LOWER(details), 'x', '')) AS Count_X,
        LEN(details) - LEN(REPLACE(LOWER(details), 'y', '')) AS Count_Y,
        LEN(details) - LEN(REPLACE(LOWER(details), 'z', '')) AS Count_Z,
        LEN(details) - LEN(REPLACE(details, '0', '')) AS Count_0,
        LEN(details) - LEN(REPLACE(details, '1', '')) AS Count_1,
        LEN(details) - LEN(REPLACE(details, '2', '')) AS Count_2,
        LEN(details) - LEN(REPLACE(details, '3', '')) AS Count_3,
        LEN(details) - LEN(REPLACE(details, '4', '')) AS Count_4,
        LEN(details) - LEN(REPLACE(details, '5', '')) AS Count_5,
        LEN(details) - LEN(REPLACE(details, '6', '')) AS Count_6,
        LEN(details) - LEN(REPLACE(details, '7', '')) AS Count_7,
        LEN(details) - LEN(REPLACE(details, '8', '')) AS Count_8,
        LEN(details) - LEN(REPLACE(details, '9', '')) AS Count_9,
        LEN(REPLACE(REPLACE(REPLACE(details, ' ', ''), ',', ''), '.', '')) AS All_letter_count
    FROM Contacts
    WHERE id = 3
) AS source
UNPIVOT (
    count FOR title IN (
        Count_A, count_B,Count_C,count_D,Count_E, count_F,count_G, Count_H, Count_I, Count_J,
        Count_K,count_L, Count_M,count_N,Count_O, Count_P,Count_Q, count_R,Count_S, Count_T,
        Count_U, Count_V,Count_W, Count_X, Count_Y,Count_Z, Count_0, Count_1,Count_2, Count_3,
        Count_4, Count_5,Count_6,Count_7, Count_8, Count_9, All_letter_count
    )
) AS unpvt;


----------------------------------------Another way Convert Row to Column wise Process------------------------------------------


select 'Number of A' as title, (select LEN(details) - LEN(REPLACE(LOWER(details), 'a', '')) AS Count1) from Contacts where id=3
union all
select 'Number of B', (select LEN(details) - LEN(REPLACE(LOWER(details), 'b', '')) AS Count_B) from Contacts where id=3
union all
select 'Number of C', (select LEN(details) - LEN(REPLACE(LOWER(details), 'c', '')) AS Count_C) from Contacts where id=3
union all
select 'Number of D', (select LEN(details) - LEN(REPLACE(LOWER(details), 'd', '')) AS Count_D) from Contacts where id=3
union all
select 'Number of E', (select LEN(details) - LEN(REPLACE(LOWER(details), 'e', '')) AS Count_E) from Contacts where id=3
union all
select 'Number of F', (select LEN(details) - LEN(REPLACE(LOWER(details), 'f', '')) AS Count_F) from Contacts where id=3
union all
select 'Number of G', (select LEN(details) - LEN(REPLACE(LOWER(details), 'g', '')) AS Count_G) from Contacts where id=3
union all
select 'Number of H', (select LEN(details) - LEN(REPLACE(LOWER(details), 'h', '')) AS Count_H) from Contacts where id=3
union all
select 'Number of I', (select LEN(details) - LEN(REPLACE(LOWER(details), 'i', '')) AS Count_I) from Contacts where id=3
union all
select 'Number of J', (select LEN(details) - LEN(REPLACE(LOWER(details), 'j', '')) AS Count_J) from Contacts where id=3
union all
select 'Number of K', (select LEN(details) - LEN(REPLACE(LOWER(details), 'k', '')) AS Count_K) from Contacts where id=3
union all
select 'Number of L', (select LEN(details) - LEN(REPLACE(LOWER(details), 'l', '')) AS Count_L) from Contacts where id=3
union all
select 'Number of M', (select LEN(details) - LEN(REPLACE(LOWER(details), 'm', '')) AS Count_M) from Contacts where id=3
union all
select 'Number of N', (select LEN(details) - LEN(REPLACE(LOWER(details), 'n', '')) AS Count_N) from Contacts where id=3
union all
select 'Number of O', (select LEN(details) - LEN(REPLACE(LOWER(details), 'o', '')) AS Count_O) from Contacts where id=3
union all
select 'Number of P', (select LEN(details) - LEN(REPLACE(LOWER(details), 'p', '')) AS Count_P) from Contacts where id=3
union all
select 'Number of Q', (select LEN(details) - LEN(REPLACE(LOWER(details), 'q', '')) AS Count_Q) from Contacts where id=3
union all
select 'Number of R', (select LEN(details) - LEN(REPLACE(LOWER(details), 'r', '')) AS Count_R) from Contacts where id=3
union all
select 'Number of S', (select LEN(details) - LEN(REPLACE(LOWER(details), 's', '')) AS Count_S) from Contacts where id=3
union all
select 'Number of T', (select LEN(details) - LEN(REPLACE(LOWER(details), 't', '')) AS Count_T) from Contacts where id=3
union all
select 'Number of U', (select LEN(details) - LEN(REPLACE(LOWER(details), 'u', '')) AS Count_U) from Contacts where id=3
union all
select 'Number of V', (select LEN(details) - LEN(REPLACE(LOWER(details), 'v', '')) AS Count_V) from Contacts where id=3
union all
select 'Number of W', (select LEN(details) - LEN(REPLACE(LOWER(details), 'w', '')) AS Count_W) from Contacts where id=3
union all
select 'Number of X', (select LEN(details) - LEN(REPLACE(LOWER(details), 'x', '')) AS Count_X) from Contacts where id=3
union all
select 'Number of Y', (select LEN(details) - LEN(REPLACE(LOWER(details), 'y', '')) AS Count_Y) from Contacts where id=3
union all
select 'Number of Z', (select LEN(details) - LEN(REPLACE(LOWER(details), 'z', '')) AS Count_Z) from Contacts where id=3
union all
select 'Number of 0', (Select LEN(details) - LEN(REPLACE(details, '0', '')) AS Count_0) from Contacts where id=3
union all
select 'Number of 1', (Select LEN(details) - LEN(REPLACE(details, '1', '')) AS Count_1) from Contacts where id=3
union all
select 'Number of 2', (select LEN(details) - LEN(REPLACE(details, '2', '')) AS Count_2) from Contacts where id=3
union all
select 'Number of 3', (select LEN(details) - LEN(Replace(details, '3', '')) AS Count_3) from Contacts where id=3
union all
select 'Number of 4', (select LEN(details) - LEN(Replace(details, '4', '')) As Count_4) from Contacts where id=3
union all
select 'Number of 5', (select len(details) - len(replace(details, '5', '')) as Count_5) from Contacts where id=3
union all
select 'Number of 6', (select len(details) - len(replace(details, '6', '')) as Count_6) from Contacts where id=3
union all
select 'Number of 7', (select len(details) - len(replace(details, '7', '')) as Count_7) from Contacts where id=3
union all
select 'Number of 8', (select len(details) - len(replace(details, '8', '')) as Count_8) from Contacts where id=3
union all
select 'Number of 9', (select len(details) - len(replace(details, '9', '')) as Count_9) from Contacts where id=3
union all
SELECT 'All letter count' As Description, (SELECT LEN(REPLACE(REPLACE(REPLACE(details, ' ', ''), '.', ''), ',', '')) FROM Contacts WHERE id = 3) AS LetterCount;

