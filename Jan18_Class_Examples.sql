#Chapter 2
use pizzas;
select signature_pizza, row_number() 
over (order by signature_pizza) from pizza_info;

select signature_pizza, health_index, rank() 
over (order by health_index desc) from pizza_info;

select signature_pizza, average_price_for_1,
dense_rank() over (order by average_price_for_1) 
from pizza_place_info;

select signature_pizza, average_price_for_1,
rank() over (order by average_price_for_1) 
from pizza_place_info;

select signature_pizza, health_index, percent_rank() 
over (order by health_index) from pizza_info;

select signature_pizza, health_index, ntile(4) 
over (order by health_index) from pizza_info;

select signature_pizza, health_index, ntile(10) 
over (order by health_index) from pizza_info;

select signature_pizza, health_index, lead(health_index) over
(order by health_index desc) as health_index_of_next_healthiest_pizza
from pizza_info;

select signature_pizza, health_index, lag(health_index) over
(order by health_index desc) as health_index_of_next_healthiest_pizza
from pizza_info;

select signature_pizza, (health_index - lead(health_index) over
(order by health_index desc))  as advantage_over_next_healthiest_pizza
from pizza_info;

select signature_pizza, health_index, lead(health_index,1,'No worse pizza') over
(order by health_index desc) as health_index_of_healthier_pizza
from pizza_info;

select signature_pizza, health_index, lag(health_index,1,'No better pizza') over
(order by health_index desc) as health_index_of_healthier_pizza
from pizza_info;

select signature_pizza, average_price_for_1, first_value(average_price_for_1) 
over (order by average_price_for_1) as cheapest
from pizza_place_info;

select location, avg(rating_out_of_10) over (partition by location) 
as average_rating
from pizza_place_info;

select signature_pizza, abs(average_price_for_1 - 
first_value(average_price_for_1)
over (order by average_price_for_1)) as difference_from_cheapest
from pizza_place_info;

select signature_pizza, health_index, cume_dist() over
(order by health_index desc)
from pizza_info;

select signature_pizza, health_index, nth_value(signature_pizza,5) 
over
(order by health_index desc)
from pizza_info;