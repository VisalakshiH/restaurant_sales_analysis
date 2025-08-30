-- Get the least ordered items 
select item_name, category, count(item_id) as cnt
from order_details od LEFT JOIN menu_items mi on
	od.item_id = mi.menu_item_id
    group by item_name, category, item_id
    order by cnt ;

-- Get the most ordered items 
select item_name, category, count(item_id) as cnt
from order_details od LEFT JOIN menu_items mi on
	od.item_id = mi.menu_item_id
    group by item_name, category, item_id
    order by cnt desc;
    
-- Top 5 orders that spent most money
select order_id, round(sum(price),2) as amount
from order_details od LEFT JOIN menu_items mi on
	od.item_id = mi.menu_item_id
    group by order_id
    order by amount desc
    limit 5;
    