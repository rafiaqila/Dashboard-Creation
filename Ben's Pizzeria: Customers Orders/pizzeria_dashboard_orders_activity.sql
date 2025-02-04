
-- DASHBOARD 1:ORDERS ACTIVITY

SELECT
	o.order_id, -- TOTAL ORDERS
	i.item_price, -- TOTAL SALES
	o.quantity, -- TOTAL ITEMS
	i.item_cat, -- SALES BY CATEGORY
	i.item_name, -- TOP SELLING ITEMS
	STR_TO_DATE(o.created_at, '%m/%d/%Y %H:%i') AS created_at, -- ORDERS BY HOUR AND SALES BY HOUR
	a.delivery_address1, -- ORDERS BY ADDRESS
	a.delivery_address2, -- ORDERS BY ADDRESS
	a.delivery_city, -- ORDERS BY ADDRESS
	a.delivery_zipcode, -- ORDERS BY ADDRESS
	o.delivery -- ORDERS BY DELIVERY/PICKUP
FROM
	orders o
	LEFT JOIN item i on o.item_id = i.item_id
	LEFT JOIN address a on o.add_id = a.add_id;

SELECT *
FROM item;

DATETIME