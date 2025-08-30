select * from menu_items;

-- How many items on the menu
select count(menu_item_id) from menu_items;

-- How many unique items on the menu
select distinct count(menu_item_id) from menu_items;

-- Most expensive item on the menu
select item_name, price expensive from menu_items
order by price desc 
limit 1;

-- Least expensive item on the menu
select item_name, price from menu_items
order by price
limit 1;

-- How many italian dishes on the menu
select count(menu_item_id) from menu_items
where category = 'Italian';

-- Most expensive italian item on the menu
select item_name, price from menu_items
where category = 'Italian'
order by price desc
limit 1;

-- Least expensive italian item on the menu
select item_name, price from menu_items
where category = 'Italian'
order by price
limit 1;

-- How many items in each category 
select category, count(menu_item_id) "Number of Items" 
from menu_items
group by category;

-- Avg dish price in each category 
select category, avg(price) "Average Price" 
from menu_items
group by category;