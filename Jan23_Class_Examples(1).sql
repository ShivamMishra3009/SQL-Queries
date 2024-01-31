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

select signature_pizza, health_index, lag(health_index,1,'No better pizza') over
(order by health_index desc) as health_index_of_healthier_pizza
from pizza_info;

select signature_pizza, average_price_for_1, first_value(average_price_for_1) 
over (order by average_price_for_1) as cheapest
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


select location, avg(rating_out_of_10) over (partition by location) 
as average_rating
from pizza_place_info;

select location, avg(rating_out_of_10) from pizza_place_info
group by location
order by location;

select pizza_place, location, rank() 
over (partition by location  order by rating_out_of_10 desc) 
as rank_in_respective_locality, rating_out_of_10 from pizza_place_info;

select pizza_place, location, average_price_for_1, 
lag(pizza_place,1,'nothing cheaper in this locality') 
over (partition by location order by average_price_for_1) as cheaper_option_in_same_locality, 
lead(pizza_place,1,'nothing costlier in this locality') over (partition by location 
order by average_price_for_1) as costlier_option_in_same_locality from pizza_place_info;

select pizza_place, location, average_price_for_1, 
lag(pizza_place,1,'nothing cheaper in this locality') 
over price_window as cheaper_option_in_same_locality, 
lead(pizza_place,1,'nothing costlier in this locality') over price_window as 
costlier_option_in_same_locality from pizza_place_info
window price_window as (partition by location order by average_price_for_1);

select pizza_place, location, rank() over rating_by_location,
dense_rank() over rating_by_location, percent_rank() over rating_by_location 
from pizza_place_info window rating_by_location as 
(partition by location  order by rating_out_of_10 desc);

select pizza_place, location, rank() over rating_by_location as rating_rank_in_location, 
lag(pizza_place,1,'nothing cheaper in this locality') 
over price_window as cheaper_option_in_same_locality, 
lead(pizza_place,1,'nothing costlier in this locality') over price_window as 
costlier_option_in_same_locality from pizza_place_info
window rating_by_location as (partition by location  order by rating_out_of_10 desc),
price_window as (partition by location order by average_price_for_1)
order by average_price_for_1;

select signature_pizza, health_index, sum(health_index) 
over (order by signature_pizza desc) 
as running_sum, avg(health_index) 
over (order by signature_pizza desc) 
as running_average from pizza_info; 
