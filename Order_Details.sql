select * from order_details;

alter table order_details 
rename column ï»¿order_details_id to order_details_id;

select count(*) from order_details;

-- Date range in the table 
select min(order_date), max(order_date) from order_details;

-- How many orders were made within this date range
select count(distinct order_id) from order_details;

-- How many items were ordered within this date range
select distinct count(order_id) from order_details
;

-- How many items were ordered within this date range
select order_id, count(item_id) as cnt from order_details
group by order_id;

-- Max number of items within an order
select order_id, count(item_id) from order_details
group by order_id
order by count(item_id) desc ;
