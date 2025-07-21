use restaruant_db;

select * from menu_items;

-- 1 who many items present in menu table?
select count(*) from menu_items;

-- 2. what is least and most expensive items on the menu?
select max(price),min(price) from menu_items;

-- 3. how many italian dishes on the menu, least and expensive italian dishes on the menu?
select * from menu_items where category = 'italian' order by price desc;

select category,count(menu_item_id) as num_dishes,max(price),min(price) 
from menu_items where category = 'italian' order by price;

select * from menu_items where price in (select max(price) from menu_items) 
union
 select * from menu_items where price in (select min(price) from menu_items);

-- 4 how many dishes are there in each category and average price with in them?
select category,count(menu_item_id) as num_dishes,avg(price) from menu_items group by category;

select * from order_details;

-- 1. what is the date range of the table?
select min(order_date), max(order_date) from order_details;

-- 2. How many orders and items were made within this date range? 
select count(distinct order_id) as total_orders,count(item_id) from order_details;

-- 3. Which orders had the most number of items?
select order_id,count(item_id) as num_items from order_details
 group by order_id 
 order by num_items desc;

-- 4 . How many orders had more than 12 items?
select count(*) from 
(select order_id,count(item_id) as num_items from order_details
 group by order_id 
 having num_items>12) as num_orders;
 
 
 
 -- 1.Combine the menu_items and order_details tables into a single table?
 select *
 from menu_items  join order_details 
 on(menu_item_id=item_id);
 
select * 
 from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id;
 
 -- 2. What were the least and most ordered items? What categories were they in?
select item_name,count(order_details_id) as purchases
 from order_details left join menu_items
 on(menu_item_id=item_id) group by item_name order by purchases desc;
 
 -- 3. What were the top 5 orders that spent the most money?
select order_id,sum(price) as total_spend 
 from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc limit 5;

-- 4.View the details of the highest spend order. Which specific items were purchased?
select category,count(item_id) as num_item
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category
order by num_item desc;

-- 5. View the details of the top 5 highest spend orders
select order_id,category,count(item_id) as num_item
from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in (440,2075,1957,330,2675)
group by category,order_id;
 