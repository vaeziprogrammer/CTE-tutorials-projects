-- using Temporary tables

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

-- I made a temporary table which doesn't exist in the database, it's just a view
-- so we want to import some data into our temp table

insert into temp_table 
values ('ali', 'vaezi', 'casino royal');

-- this exucation below, only works as long as you are in this session:
select *
from temp_table;


-- also we can do something else with temp table, we can either insert data or we can import data from a pre-existing table to our temp table:
-- like :

create temporary table temp_table2
select *
from employees
where salary > 50000;

select *
from temp_table2;

# done



