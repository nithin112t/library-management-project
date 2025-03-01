create database library_system

use library_system

-----------------------------creating branch table----------------------------------------------
drop table if exists branch
create table branch(
branch_id varchar(15) primary key,
manager_id varchar(15),
branch_address varchar(50),
contact_no varchar(15)
)

INSERT INTO branch (branch_id, manager_id, branch_address, contact_no) VALUES ('B001', 'E109', '123 Main St', 919099988676)
, ('B002', 'E109', '456 Elm St', 919099988677)
, ('B003', 'E109', '789 Oak St', 919099988678)
,('B004', 'E110', '567 Pine St', 919099988679)
,('B005', 'E110', '890 Maple St', 919099988680)

select * from branch

------------------------------------created employeees table---------------------
drop table if exists employees
create table employees(emp_id  varchar(30) primary key,
emp_name varchar(25),
position varchar(25)	,
salary	int ,
branch_id varchar(15)  ---this  can be a foreign key
)

INSERT INTO employees(emp_id,emp_name,position,salary,branch_id) VALUES ('E101', 'John Doe', 'Clerk', 60000, 'B001'),
('E102', 'Jane Smith', 'Clerk', 45000, 'B002'),
('E103', 'Mike Johnson', 'Librarian', 55000, 'B001'),
('E104', 'Emily Davis', 'Assistant', 40000, 'B001'),
('E105', 'Sarah Brown', 'Assistant', 42000, 'B001'),
('E106', 'Michelle Ramirez', 'Assistant', 43000, 'B001'),
('E107', 'Michael Thompson', 'Clerk', 62000, 'B005'),
('E108', 'Jessica Taylor', 'Clerk', 46000, 'B004'),
('E109', 'Daniel Anderson', 'Manager', 57000, 'B003'),
('E110', 'Laura Martinez', 'Manager', 41000, 'B005'),
('E111', 'Christopher Lee', 'Assistant', 65000, 'B005')
SELECT * from employees

----------------------------------------------created books table------------------
drop table if exists books
create table books(
isbn varchar(20) primary key,
book_title	varchar(75),
category varchar(20)	,
rental_price float,
status	varchar(15),
author	varchar(40),
publisher varchar(55)
)

INSERT INTO books (isbn, book_title, category, rental_price, status, author, publisher) VALUES ('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.5, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.5, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', 'Harry Potter and the Sorcerers Stone', 'Fantasy', 7, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.5, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', 'A Peoples History of the United States', 'History', 9, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8, 'no', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.5, 'no', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.5, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.5, 'no', 'Charles C. Mann', 'Vintage Books'),
('978-0-679-64115-3', '1984', 'Dystopian', 6.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-143951-8', 'Pride and Prejudice', 'Classic', 5, 'yes', 'Jane Austen', 'Penguin Classics'),
('978-0-452-28240-7', 'Brave New World', 'Dystopian', 6.5, 'yes', 'Aldous Huxley', 'Harper Perennial'),
('978-0-670-81302-4', 'The Road', 'Dystopian', 7, 'yes', 'Cormac McCarthy', 'Knopf'),
('978-0-385-33312-0', 'The Shining', 'Horror', 6, 'yes', 'Stephen King', 'Doubleday'),
('978-0-451-52993-5', 'Fahrenheit 451', 'Dystopian', 5.5, 'yes', 'Ray Bradbury', 'Ballantine Books'),
('978-0-345-39180-3', 'Dune', 'Science Fiction', 8.5, 'yes', 'Frank Herbert', 'Ace'),
('978-0-375-50167-0', 'The Road', 'Dystopian', 7, 'yes', 'Cormac McCarthy', 'Vintage'),
('978-0-06-025492-6', 'Where the Wild Things Are', 'Children', 3.5, 'yes', 'Maurice Sendak', 'HarperCollins'),
('978-0-06-112241-5', 'The Kite Runner', 'Fiction', 5.5, 'yes', 'Khaled Hosseini', 'Riverhead Books'),
('978-0-06-440055-8', 'Charlottes Web', 'Children', 4, 'yes', 'E.B. White', 'Harper & Row'),
('978-0-679-77644-3', 'Beloved', 'Fiction', 6.5, 'yes', 'Toni Morrison', 'Knopf'),
('978-0-14-027526-3', 'A Tale of Two Cities', 'Classic', 4.5, 'yes', 'Charles Dickens', 'Penguin Books'),
('978-0-7434-7679-3', 'The Stand', 'Horror', 7, 'yes', 'Stephen King', 'Doubleday'),
('978-0-451-52994-2', 'Moby Dick', 'Classic', 6.5, 'yes', 'Herman Melville', 'Penguin Books'),
('978-0-06-112008-4', 'To Kill a Mockingbird', 'Classic', 5, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0-553-57340-1', '1984', 'Dystopian', 6.5, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-7432-4722-5', 'Angels & Demons', 'Mystery', 7.5, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-7432-7356-4', 'The Hobbit', 'Fantasy', 7, 'yes', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt')

select * from books

------------------------------creating members table----------------------------------------------

drop table if exists members
create table members(
member_id varchar(10) primary key,
member_name varchar(30)	,
member_address	varchar(30),
reg_date date

)

INSERT INTO members (member_id, member_name, member_address, reg_date) VALUES ('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25'),
('C118', 'Sam', '133 Pine St', '2024-06-01'),
('C119', 'John', '143 Main St', '2024-05-01')


select  * from members


--------------------------------creating issued_status table------------------------
DROP TABLE IF EXISTS issued_status;
CREATE TABLE issued_status
(
            issued_id VARCHAR(10) PRIMARY KEY,
            issued_member_id VARCHAR(10),   --this is foriegn key in  memebr table
            issued_book_name VARCHAR(80),
            issued_date DATE,
            issued_book_isbn VARCHAR(50),   --this is foreign key in books table
            issued_emp_id VARCHAR(10),)  --this is foriegn key in  employee table

INSERT INTO issued_status(issued_id, issued_member_id, issued_book_name, issued_date, issued_book_isbn, issued_emp_id) VALUES ('IS106', 'C106', 'Animal Farm', '2024-03-10', '978-0-330-25864-8', 'E104'),
('IS107', 'C107', 'One Hundred Years of Solitude', '2024-03-11', '978-0-14-118776-1', 'E104'),
('IS108', 'C108', 'The Great Gatsby', '2024-03-12', '978-0-525-47535-5', 'E104'),
('IS109', 'C109', 'Jane Eyre', '2024-03-13', '978-0-141-44171-6', 'E105'),
('IS110', 'C110', 'The Alchemist', '2024-03-14', '978-0-307-37840-1', 'E105'),
('IS111', 'C109', 'Harry Potter and the Sorcerers Stone', '2024-03-15', '978-0-679-76489-8', 'E105'),
('IS112', 'C109', 'A Game of Thrones', '2024-03-16', '978-0-09-957807-9', 'E106'),
('IS113', 'C109', 'A Peoples History of the United States', '2024-03-17', '978-0-393-05081-8', 'E106'),
('IS114', 'C109', 'The Guns of August', '2024-03-18', '978-0-19-280551-1', 'E106'),
('IS115', 'C109', 'The Histories', '2024-03-19', '978-0-14-044930-3', 'E107'),
('IS116', 'C110', 'Guns, Germs, and Steel: The Fates of Human Societies', '2024-03-20', '978-0-393-91257-8', 'E107'),
('IS117', 'C110', '1984', '2024-03-21', '978-0-679-64115-3', 'E107'),
('IS118', 'C101', 'Pride and Prejudice', '2024-03-22', '978-0-14-143951-8', 'E108'),
('IS119', 'C110', 'Brave New World', '2024-03-23', '978-0-452-28240-7', 'E108'),
('IS120', 'C110', 'The Road', '2024-03-24', '978-0-670-81302-4', 'E108'),
('IS121', 'C102', 'The Shining', '2024-03-25', '978-0-385-33312-0', 'E109'),
('IS122', 'C102', 'Fahrenheit 451', '2024-03-26', '978-0-451-52993-5', 'E109'),
('IS123', 'C103', 'Dune', '2024-03-27', '978-0-345-39180-3', 'E109'),
('IS124', 'C104', 'Where the Wild Things Are', '2024-03-28', '978-0-06-025492-6', 'E110'),
('IS125', 'C105', 'The Kite Runner', '2024-03-29', '978-0-06-112241-5', 'E110'),
('IS126', 'C105', 'Charlottes Web', '2024-03-30', '978-0-06-440055-8', 'E110'),
('IS127', 'C105', 'Beloved', '2024-03-31', '978-0-679-77644-3', 'E110'),
('IS128', 'C105', 'A Tale of Two Cities', '2024-04-01', '978-0-14-027526-3', 'E110'),
('IS129', 'C105', 'The Stand', '2024-04-02', '978-0-7434-7679-3', 'E110'),
('IS130', 'C106', 'Moby Dick', '2024-04-03', '978-0-451-52994-2', 'E101'),
('IS131', 'C106', 'To Kill a Mockingbird', '2024-04-04', '978-0-06-112008-4', 'E101'),
('IS132', 'C106', 'The Hobbit', '2024-04-05', '978-0-7432-7356-4', 'E106'),
('IS133', 'C107', 'Angels & Demons', '2024-04-06', '978-0-7432-4722-5', 'E106'),
('IS134', 'C107', 'The Diary of a Young Girl', '2024-04-07', '978-0-375-41398-8', 'E106'),
('IS135', 'C107', 'Sapiens: A Brief History of Humankind', '2024-04-08', '978-0-307-58837-1', 'E108'),
('IS136', 'C107', '1491: New Revelations of the Americas Before Columbus', '2024-04-09', '978-0-7432-7357-1', 'E102'),
('IS137', 'C107', 'The Catcher in the Rye', '2024-04-10', '978-0-553-29698-2', 'E103'),
('IS138', 'C108', 'The Great Gatsby', '2024-04-11', '978-0-525-47535-5', 'E104'),
('IS139', 'C109', 'Harry Potter and the Sorcerers Stone', '2024-04-12', '978-0-679-76489-8', 'E105'),
('IS140', 'C110', 'Animal Farm', '2024-04-13', '978-0-330-25864-8', 'E102')


select * from issued_status

--------------------creating retrun_status table---------------------------------


DROP TABLE IF EXISTS return_status;
CREATE TABLE return_status
(
            return_id VARCHAR(10) PRIMARY KEY,
            issued_id VARCHAR(10),
            return_book_name VARCHAR(80),
            return_date DATE,
            return_book_isbn VARCHAR(50)

)
INSERT INTO return_status(return_id, issued_id, return_book_name, return_date, return_book_isbn) VALUES ('RS101', 'IS101', 'NULL', '2023-06-06', 'NULL'),
('RS102', 'IS105', 'NULL', '2023-06-07', 'NULL'),
('RS103', 'IS103', 'NULL', '2023-08-07', 'NULL'),
('RS104', 'IS106', 'NULL', '2024-05-01', 'NULL'),
('RS105', 'IS107', 'NULL', '2024-05-03','NULL'),
('RS106', 'IS108', 'NULL', '2024-05-05','NULL'),
('RS107', 'IS109', 'NULL', '2024-05-07','NULL'),
('RS108', 'IS110', 'NULL', '2024-05-09','NULL'),
('RS109', 'IS111', 'NULL', '2024-05-11','NULL'),
('RS110', 'IS112', 'NULL', '2024-05-13', 'NULL'),
('RS111', 'IS113', 'NULL', '2024-05-15', 'NULL'),
('RS112', 'IS114', 'NULL', '2024-05-17','NULL'),
('RS113', 'IS115', 'NULL', '2024-05-19', 'NULL'),
('RS114', 'IS116', 'NULL', '2024-05-21','NULL'),
('RS115', 'IS117', 'NULL', '2024-05-23','NULL'),
('RS116', 'IS118', 'NULL', '2024-05-25', 'NULL'),
('RS117', 'IS119', 'NULL', '2024-05-27', 'NULL'),
('RS118', 'IS120', 'NULL', '2024-05-29', 'NULL')


select  * from return_status



--Now, I'm going to add a foreign key to a table that already has a primary key in its own table

alter TABLE issued_status
add constraint fk_member
foreign key (issued_member_id)
REFERENCES members (member_id)

alter TABLE issued_Status
add constraint fk_isbn
foreign key (issued_book_isbn)
REFERENCES books(isbn);

alter TABLE issued_Status
add constraint fk_employees
foreign key (issued_emp_id)
REFERENCES employees(emp_id);

alter TABLE employees
add constraint fk_branch
foreign key (branch_id)
REFERENCES  branch(branch_id);

alter TABLE  return_status
add constraint fk_issued_Status
foreign key (issued_id)
REFERENCES issued_status(issued_id);

--if we want to change the datatype we need to do alter

alter table branch
alter column contact_no varchar(25);


--project tasks
---CRUD OPERATIONS (CREATE,READ,UPDATE,DELETE)


-- Task 1. Create a New Book Record
-- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"


SELECT * FROM BOOKS
INSERT INTO BOOKS(ISBN , BOOK_TITLE,CATEGORY,rental_price,status,author, publisher) 
VALUES ('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')


-- Task 2: Update an Existing Member's Address

SELECT * FROM members

update members
set member_address = '3055 n oakland ave'
where member_id = 'c101'


-- Task 3: Delete a Record from the Issued Status Table
-- Objective: Delete the record with issued_id = 'IS111' from the issued_status table.

---WE CANT DELETE THE IS111 BECAUSE IT IS A PRIMARY KEY IN RETRUN_STATUS  TABLE AND IT IS ASK AS FOREIGN KEY IN THIS TABLE
--SO WE HAVE TRO DLETE THE ID THAT WE DONT HAVE IN RETRUN_STATUS 
--SO IN THIS CASE I'M TAKING ID IS121
SELECT * FROM issued_status

DELETE from issued_status
 WHERE issued_id = 'IS121'


-- Task 4: Retrieve All Books Issued by a Specific Employee
-- Objective: Select all books issued by the employee with emp_id = 'E101'.
SELECT * FROM issued_status
WHERE issued_emp_id = 'E101'


-- Task 5: List Members Who Have Issued More Than One Book
-- Objective: Use GROUP BY to find members who have issued more than one book.

SELECT  * FROM issued_status

SELECT issued_member_id--,count(issued_book_isbn) as no_of_books
from issued_status
group by issued_member_id
having count(issued_book_isbn) >1



---------------------- CTAS (Create Table As Select) ----------------------

-- Task 6: Create Summary Tables**: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt

select * from books

SELECT 
    b.isbn,
    b.book_title,
    COUNT(i.issued_id) AS no_issued
INTO BOOK_COUNT  -- Creates the new table
FROM BOOKS AS b
JOIN issued_status AS i 
ON i.issued_book_isbn = b.isbn
GROUP BY b.isbn, b.book_title;
select * from book_count

----------------------------- 4. Data Analysis & Findings--------------------------------------------


-- Task 7. **Retrieve All Books in a Specific Category:

select * from books
where category = 'children'

-- Task 8: Find Total Rental Income by Category:  (this will show the total nincome by category and also count by total it will show number of times it issued 
select * fROm issued_status

SELECT 
    b.category,
	sum(b.rental_price) as total_income,
	count(*) as no_of_times
FROM BOOKS AS b
JOIN issued_status AS i
ON I.issued_book_isbn = b.isbn
GROUP BY category
order by total_income desc


-- Task 9. **List Members Who Registered in the Last 300 Days**:
--to find out the dataw we have to use the datediff   the syntax is datediff(datepart,start_DAte,end_Date)
select * from members
where DATEDIFF(DAY, reg_date, getdate( ))<=300

---datepart () specifies the part of the date that you want to extract.(year,quarter(half year),month,day,week,hour,minute,second,millisecond,)
SELECT DATEPART(DAY, '2025-02-27') AS YearPart;


-- Task 10: List Employees with Their Branch Manager's Name and their branch details**:

--i want to employees who is working and their manager with the brach_ids

select * from branch

select e. * , e2.emp_name ,b.branch_id
from employees as e
join  branch as b on b .branch_id =e. branch_id 
join employees as e2 on e2.emp_id =b.manager_id		



-- Task 11. Create a Table of Books with Rental Price Above a Certain Threshold 7usd

select *
into book_7
from books
where rental_price >7

select * from book_7

-- Task 12: Retrieve the List of Books Not Yet Returned

select distinct i.*
from issued_status as i
full join retrun_Status as  r 
on r.issued_id = i.issued_id
where r.return_id is null

select * from retrun_Status


---------------------------inserting new rows to issued_status ------


INSERT INTO issued_status(issued_id, issued_member_id, issued_book_name, issued_date, issued_book_isbn, issued_emp_id)
VALUES
('IS151', 'C118', 'The Catcher in the Rye', DATEADD(DAY, -24, GETDATE()), '978-0-553-29698-2', 'E108'),
('IS152', 'C119', 'The Catcher in the Rye', DATEADD(DAY, -13, GETDATE()), '978-0-553-29698-2', 'E109'),
('IS153', 'C106', 'Pride and Prejudice', DATEADD(DAY, -7, GETDATE()), '978-0-14-143951-8', 'E107'),
('IS154', 'C105', 'The Road', DATEADD(DAY, -32, GETDATE()), '978-0-375-50167-0', 'E101');


ALTER TABLE return_status
ADD book_quality VARCHAR(15) DEFAULT('Good');

UPDATE return_status
SET book_quality = 'Damaged'
WHERE issued_id 
    IN ('IS112', 'IS117', 'IS118');
SELECT * FROM return_status;


 -----------------------------------Advanced SQL Operations---------------------------------
/* Task 13: Identify Members with Overdue Books

Write a query to identify members who have overdue books (assume a 30-day return period). Display the member's name, book title, issue date, and days overdue.*/ 

select * from members
select * from issued_status
select * from retrun_status
select* from books

select i.issued_member_id,
	m.member_name,
	b.book_title,
	i.issued_date,
	DATEdiff(day , i.issued_date ,getdate()) as over_due_days
from issued_status as i 

join members as m 
	on m.member_id = i.issued_member_id
join books as b 
	on b.isbn = i.issued_book_isbn
left join retrun_status as r
	on r.issued_id = i.issued_id
where r.return_date is null
and datediff(day,i.issued_date,getdate()) >30
order by 1




/*Task 14: Update Book Status on Return
Write a query to update the status of books in the books table to "available" when they are returned (based on entries in the return_status table).*/

--for that we need to create the store procedure to auto update by just adding the values into retrun table  then it will  automatically update on books table(status column into yes(like avaiable))

select * from retrun_Status


CREATE PROCEDURE add_return_records 
    @p_return_id VARCHAR(10), 
    @p_issued_id VARCHAR(10), 
    @p_book_quality VARCHAR(10)
AS
BEGIN
    DECLARE @v_isbn VARCHAR(50)
    DECLARE @v_book_name VARCHAR(80)

    -- Step 1: Insert the return record into the `return_status` table
    INSERT INTO return_status (return_id, issued_id, return_date, book_quality)
    VALUES (@p_return_id, @p_issued_id, GETDATE(), @p_book_quality)

    -- Step 2: Retrieve ISBN and book title from `issued_status` table based on issued ID
    SELECT 
        @v_isbn = issued_book_isbn,
        @v_book_name = issued_book_name
    FROM issued_status
    WHERE issued_id = @p_issued_id

    -- Step 3: Update the `books` table to mark the book as available
    UPDATE books
    SET status = 'yes'
    WHERE isbn = @v_isbn

    -- Step 4: Notify the user that the book has been returned
    PRINT 'Thank you for returning the book: ' + @v_book_name
END;

select * from books
select * from issued_status
where issued_book_isbn ='978-0-7432-7357-1'

select * from retrun_Status
where issued_id = 'IS136'

EXEC add_return_records 'R119', 'IS136', 'Good';


/*
Task 15: Branch Performance Report
Create a query that generates a performance report for each branch, showing the number of books issued, the number of books returned, and the total revenue generated from book rentals.*/

select  * from branch
select * from issued_status
select  * from retrun_Status
select * from books
select * from employees


SELECT
	B.branch_id,
	B.manager_id,
	count(I.issued_id) as count_issued,
	count(R.return_id) as count_retruned,
	sum(bk.rental_price) as total_revenue
INTO reports_branch 
FROM issued_status AS I  
JOIN employees AS E ON E.emp_id = I.issued_emp_id
JOIN branch AS B ON E.branch_id =  B.branch_id
left JOIN retrun_Status AS R ON R.issued_id = I.issued_id
JOIN books as bk on i.issued_book_isbn = bk.isbn

GROUP BY B.branch_id, B.manager_id

select * from reports_branch

/*Task 16: CTAS: Create a Table of Active Members
Use the CREATE TABLE AS (CTAS) statement to create a new table active_members containing members who have issued at least one book in the last 2 months.*/

with active_members
as
(
	select distinct issued_member_id from issued_status
	where datediff(MONTH,issued_date,GETDATE()) <2)
select * into active_member
from active_members

select * from active_member as a
join members as m on a.issued_member_id = m.member_id



-------other way we can allso write by writinh the subquery in where clase
WITH ActiveMembersCTE AS (
    SELECT * 
    FROM members 
    WHERE member_id IN (
        SELECT DISTINCT issued_member_id   
        FROM issued_status
        WHERE issued_date >= DATEADD(MONTH, -2, GETDATE())
    )
)
SELECT * INTO active_members FROM ActiveMembersCTE;

SELECT * FROM active_members


/*Task 17: Find Employees with the Most Book Issues Processed
Write a query to find the top 3 employees who have processed the most book issues. Display the employee name, number of books processed, and their branch.*/
select * from issued_status
select * from employees
select * from branch

select 
	top 3 e.emp_name,
	e.branch_id,
	count(i.issued_id) as no_of_books
from employees as e
join issued_status as i  on i.issued_emp_id = e.emp_id
group by e.emp_name,e.branch_id

/*Task 18: Identify Members Issuing High-Risk Books
Write a query to identify members who have issued books more than twice with the status "damaged" in the books table. Display the member name, book title, and the number of times they've issued damaged books. */

select * from issued_status
SELECT * FROM return_status;
select * from books
select  * from members


---this is with member id

select 
	i.issued_member_id,
	i.issued_book_name,
	count(rs.issued_id) as issued_damaged
from issued_status as i 
join return_status as rs
on rs.issued_id = i.issued_id
where rs.book_quality = 'damaged'
group by i.issued_member_id,i.issued_book_name

----this is on  another way for member  names who damaged books

SELECT 
    m.member_name, 
    i.issued_book_name, 
    COUNT(rs.issued_id) AS damaged_count
FROM return_status rs
JOIN issued_status i ON rs.issued_id = i.issued_id
JOIN members m ON i.issued_member_id= m.member_id
WHERE rs.book_quality = 'damaged'
GROUP BY m.member_name,i .issued_book_name 


/*Task 19: Stored Procedure
Objective: Create a stored procedure to manage the status of books in a library system.
    Description: Write a stored procedure that updates the status of a book based on its issuance or return. Specifically:
    If a book is issued, the status should change to 'no'.
    If a book is returned, the status should change to 'yes'.*/


select * from books
select * from issued_Status

CREATE PROCEDURE issued_books
		@p_issued_id  varchar(10),
		@p_issued_memberid varchar(10),
		@p_issued_book_isbn varchar(30), 
		@P_issued_emp_id varchar(10)
as
begin

declare	@V_status varchar(10)

select @V_status = status
 from books
 where isbn = @p_issued_book_isbn

 if @V_status = 'yes'
begin

INSERT INTO issued_status (issued_id, issued_member_id, issued_date, issued_book_isbn, issued_emp_id)
       VALUES (@p_issued_id, @p_issued_memberid, GETDATE(), @p_issued_book_isbn, @p_issued_emp_id);

UPDATE books 
        SET status = 'no' 
        WHERE isbn = @p_issued_book_isbn;

        PRINT 'Book records added successfully for book ISBN: ' + @p_issued_book_isbn;
    END
    ELSE
    BEGIN
        PRINT 'Sorry, the book you have requested is unavailable. Book ISBN: ' + @p_issued_book_isbn;
    END
END;

exec issued_books 'IS106', 'C108', '978-0-375-41398-8', 'E104'


SELECT * FROM books
WHERE isbn = '978-0-375-41398-8'

	/*Task 20: Create Table As Select (CTAS)
Objective: Create a CTAS (Create Table As Select) query to identify overdue books and calculate fines.

Description: Write a CTAS query to create a new table that lists each member and the books they have issued but not returned within 30 days. The table should include:
    The number of overdue books.
    The total fines, with each day's fine calculated at $0.50.
    The number of books issued by each member.
    The resulting table should show:
    Member ID
    Number of overdue books
    Total fines
*/


SELECT * FROM BOOKS
SELECT * FROM ISSUED_STATUS
SELECT * FROM MEMBERS
select * from retrun_status
SELECT * FROM return_status

SELECT 
	m.member_id,
	SUM(CASE WHEN r.return_id IS NULL THEN 1 ELSE 0 END) AS returns,
	max(DATEDIFF(DAY, i.issued_date, GETDATE())-30) as over_due ,
	max(DATEDIFF(DAY, i.issued_date, GETDATE())-30) *50  as fine

FROM members AS M
JOIN issued_status AS I ON I.issued_member_id= M.member_id

JOIN books as b on  i.issued_book_isbn = b.isbn

left join return_status as  r on i.issued_id = r.issued_id
WHERE
  (DATEDIFF(DAY, i.issued_date, GETDATE())-30) > 0
GROUP BY m.member_id;
