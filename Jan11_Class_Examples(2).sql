use pizzas;

#inner join
select pizza_place, pi.signature_pizza, toppings 
from pizza_place_info ppi inner join pizza_info pi on
ppi.signature_pizza = pi.signature_pizza;

#regular join
select pizza_place, pi.signature_pizza, toppings 
from pizza_place_info ppi join pizza_info pi on
ppi.signature_pizza = pi.signature_pizza;

#left outer join
select person, favourite_pizza, pizza_place, location 
from people_preferences pp left outer join 
pizza_place_info ppi on pp.favourite_pizza = ppi.signature_pizza;

# right outer join
select pizza_place,Day, offer_at, location 
from day_vs_offer dvo 
right outer join pizza_place_info ppi on 
dvo.offer_at = ppi.pizza_place;

#cross join
select ppi.pizza_place, ppi.signature_pizza 
from pizza_place_info ppi cross join pizza_info pi;

#advanced joins

# three table join using inner joins
select person, budget, pizza_place, li.location 
from people_preferences pp
inner join pizza_place_info ppi
on pp.budget = ppi.average_price_for_1 
inner join location_info li on li.location = ppi.location;

# three table joins, outer joins
select pizza_place, pi.signature_pizza, health_index, person, home_address 
from pizza_place_info ppi
right outer join pizza_info pi on ppi.signature_pizza = pi.signature_pizza 
left outer join
people_preferences pp on ppi.signature_pizza = pp.favourite_pizza;

# three table joins combining inner and outer joins
select pizza_place, ppi.signature_pizza, health_index, person, favourite_pizza 
from pizza_place_info ppi
inner join pizza_info pi on ppi.signature_pizza = pi.signature_pizza 
right outer join
people_preferences pp on ppi.signature_pizza = pp.favourite_pizza;

# four table joins
select person, offer_at, offer_description, Day, other_spots 
as other_spots_closeby
from people_preferences pp inner join 
pizza_place_info ppi on pp.home_address = ppi.location 
inner join day_vs_offer dvo
on ppi.pizza_place = dvo.offer_at inner join location_info li 
on li.location = ppi.location;

# joins with other conditions
select person, budget, pizza_place, average_price_for_1 
from people_preferences pp left join pizza_place_info ppi
on pp.budget>=ppi.average_price_for_1;

# joins with multiple conditions
select person, budget, pizza_place, average_price_for_1,home_address
from people_preferences pp inner join pizza_place_info ppi
on pp.budget>=ppi.average_price_for_1 and pp.home_address = ppi.location;