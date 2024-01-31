select 'SQL is fun!' REGEXP '.*';
use pizzas;
select signature_pizza, (signature_pizza regexp 'cheese*') from pizza_info;

select count(signature_pizza regexp 'cheese*'), sum(signature_pizza regexp 'cheese*') from pizza_info ;

select signature_pizza, (signature_pizza regexp '^[a-m]') from pizza_info;

select signature_pizza, (signature_pizza regexp '[a-m]$') from pizza_info;

select signature_pizza, not (signature_pizza regexp '^[a-m]') from pizza_info;

select signature_pizza, (signature_pizza regexp '^[^a-m]') from pizza_info;

select signature_pizza from pizza_info where signature_pizza regexp '[:alpha:]';

select signature_pizza from pizza_info where signature_pizza regexp '[:number:]';

select signature_pizza from pizza_info where signature_pizza regexp '[:space:]';

select signature_pizza, signature_pizza regexp '[c]{2}' from pizza_info;

select signature_pizza, signature_pizza regexp '[cp]{2}' from pizza_info;

select signature_pizza, signature_pizza regexp '[abc]{2,4}' from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'c') from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, '[a-d]') from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'c',6) from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'c',1,2) from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'c',1,2),
regexp_instr(signature_pizza, 'c',1,2,1) from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'ch',1,2),
regexp_instr(signature_pizza, 'ch',1,2,1) from pizza_info;

select signature_pizza, regexp_instr(signature_pizza, 'ch',1,2,0,'c') from pizza_info;

select signature_pizza from pizza_info where signature_pizza rlike '^[a-c]' ;

select signature_pizza, regexp_replace(signature_pizza, 'Cheese' , 'ch') from pizza_info;

select signature_pizza, regexp_replace(signature_pizza, signature_pizza, left(signature_pizza,4))
from pizza_info;

select signature_pizza, regexp_replace(signature_pizza, '[a-i]','*',4,2) from pizza_info;

select signature_pizza, regexp_substr(signature_pizza, '^[a-i]') from pizza_info;

select signature_pizza, regexp_substr(signature_pizza, 'ch',1,2) from pizza_info;

#insert into pizza_place_info(pizza_place, signature_pizza) 
#values('Bobs kitchen','tandoori');

select *, coalesce(rating_out_of_10,pizza_place,signature_pizza) from pizza_place_info;

create role manager;

grant create view, select on pizzas.pizza_place_info to manager;

create table pizza_place_owners(owner_name varchar(255) not null ,
 pizza_place varchar(255) not null,
 age int,
 check (age>=21));
 
insert into pizza_place_owners(owner_name, pizza_place,age)
values('Johsnson' , 'Lafayette Pizza' , 16);






