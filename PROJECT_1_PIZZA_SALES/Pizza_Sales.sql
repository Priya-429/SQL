create database data_new ; 
-- 1.-- SHOW ALL COLUMNS AND ROWS IN THE TABLE.-- 
select * from salaries;
-- 2.-- SHOW ONLY THE EMPLOYEENAME AND JOBTITLE COLUMNS.
select employeename,jobtitle from salaries;
-- 3.-- SHOW THE NUMBER OF EMPLOYEES IN THE TABLE.
select count(*) from salaries;
-- 4. SHOW THE UNIQUE JOB TITLE IN THE TABLE.
select distinct jobtitle from salaries;
-- 5.SHOW THE JOB TITLE AND OVERTIME PAY FOR ALL EMPLOYEES WITH OVERTIME PAY GREATER THAN 5000.
select jobtitle,overtimepay from salaries
where overtimePay >500;
-- 6. SHOW THE AVERAGE BASE PAY FOR ALL THE EMPLOYEES.-- 
select avg(basepay) from salaries;
-- 7. SHOW THE TOP 10 HIGHEST PAID EMPLOYEES.-- 
select employeename,totalpay from salaries
order by totalpay desc
limit 10;
-- 8. SHOW THE AVERAGE OF BASEPAY,OVERTIMEPAY, AND OTHERPAY FOR EACH EMPLOYEE.-- 
select employeename,(basepay + overtimepay + otherpay)/3 as avg_of_bp_op_otherpay from salaries;
-- 9.  SHOW ALL EMPLOYEES WHO HAVE THE WORD "MANAGER" IN THEIR JOB TITLE.-- 
select employeename,jobtitle from salaries 
where jobtitle like '%Manager%';
-- 10.  SHOW ALL EMPLOYEES WITH A JOB TITLE NOT EQUAL TO "Manager".--
select employeename,jobtitle from salaries 
where jobtitle <> "Manager"; 
-- 11.   SHOW ALL THE EMPLOYEES WITH A TOTAL PAY BETWEEN 50,000 AND 75,000.-- 
select * from salaries 
where totalpay between 50000 and 75000;
-- 12. SHOW ALL EMPLOYEES WITH A BASE PAY LESS THAN 50,000 OR A TOTAL PAY GREATER THAN 100,000.-- 
select * from salaries 
where basepay < 50000 or totalpay > 100000;
-- 13. SHOW ALL EMPLOYEES WITH A TOTAL PAY BENEFITS VALUE BETWEEN 125,000 AND 150,000 AND A JOB TITLE CONTAINING THE WORD "DIRECTOR".-- 
select * from salaries 
where totalpay between 125000 and 150000 and jobtitle like'%Director%';
-- ---- 14. SHOW ALL EMPLOYEES ORDERED BY THEIR  TOTAL PAY BENEFITS IN DESCENDING ORDER.-- 
select * from salaries
order by totalpay desc;
-- 15. SHOW ALL JOB TITLES WITH AN AVERAGE BASE PAY OF AT LEAST 100,000 AND ORDER THEM BY AVERAGE BASE PAY IN DESCENDING ORDER.-- 
select jobtitle,avg(basepay) as "avgbasepay" from salaries
group by jobtitle
having avg(basepay) >=100000
order by avgbasepay desc ;
-- 16.  DELETE THE COLUMN.-- 
select * from salaries;
alter table salaries 
drop column notes;
select * from salaries;
-- 17. UPDATE THE BASE PAY OF ALL EMPLOYEES WITH THE JOB TITLE CONTAINING "MANAGER" BY INCREASING IT BY 10%.-- 
UPDATE salaries
SET basepay = basepay * 1.1
WHERE jobtitle LIKE '%Manager%';
select * from salaries;
-- 18. DELETE ALL THE EMPLOYEES WHO HAVE NO OVERTIMEPAY.-- 
select count(*) from salaries 
where overtimepay = 0;
delete from salaries 
where overtimepay =0;








