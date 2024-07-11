CREATE DATABASE titanic_project;
-- 1. 	SHOW THE FIRST 10 ROWS OF THE DATASET.-- 
select * from titanic limit 10;
-- 2. FIND THE NUMBER OF PASSENGERS WHO SURVIVED.-- 
select count(*) as "passengers_survived" from titanic where survived = 1;
-- 3.  FIND THE AVERAGE AGE OF ALL PASSENGERS.--
select avg(age) as avg_age from titanic; 
-- 4.  FIND THE NUMBER OF PASSENGERS IN EACH CLASS.-- 
select pclass,count(*) from titanic group by pclass;
-- 5. FIND THE FIRST 10 ROWS OF THE DATASET SORTED BY PASSENGER CLASS IN DESENDING ORDER.-- 
select * from titanic 
order by pclass desc limit 10;
-- 6.  FIND THE NUMBER OF PASSENGERS IN EACH CLASS SORTED BY CLASS IN ASCENDING ORDER.--
select pclass,count(*) from titanic 
group by pclass 
order by pclass asc;
-- 7. FIND THE AVERAGE FARE PAID BY PASSENGERS IN EACH CLASS.--
select pclass,avg(fare) from titanic 
group by pclass;
-- 8. FIND THE NAME OF THE PASSENGER WITH THE HIGHTEST FARE.-- 
select name, (fare) from titanic 
where fare = (select max(fare) from titanic);
-- 9. FIND THE NAME OF THE PASSENGER WHO HAD THE HIGHEST AGE AMONG THE SURVIVORS.-- 
select name,age from titanic 
where age = (select max(age) from titanic where survived = 1);
-- 10. FIND THE NUMBER OF PASSENGERS WHO PAID MORE THAN AVERAGE FARE.-- 
select count(*) as num_passengers from titanic where fare > (select avg(fare) from titanic);
-- 11. FIND THE NAME OF THE PASSENGER WHO HAD THE MOST PARENTS OR CHILDERN ON BOARD.--
select name from titanic where parch = (select max(parch) from titanic); 
-- 12. FIND THE NUMBER OF MALE AND FEMALE PASSENGERS WHO SURVIVED AND ORDER THE RESULTS BY SEX IN ASCENDING ORDER.-- 
select sex,count(*) as num_survived from titanic where survived = 1 
group by sex
order by sex asc;
-- 13. FIND THE NAME,AGE AND FARE OF THE OLDEST PASSENGER WHO SURVIVED.--
select name,age,fare from titanic 
where age = (select max(age) from titanic where survived = 1);
-- 14. FIND THE NUMBER OF MALE AND FEMALE PASSENGERS.-- 
select
sum(case when sex = "male" then 1 else 0 end) as num_male,
sum(case when sex = "female" then 1 else 0 end ) as num_female
from titanic;

