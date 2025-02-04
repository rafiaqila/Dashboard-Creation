-- DASHBOARD 2: INVENTORY MANAGEMENT
-- TOTAL QUANTITY BY INGREDIENT, TOTAL COST OF INGREDIENT, AND COST OF PIZZA

SELECT
	item_name,
	ing_id,
	ing_name,
	ing_weight,
	ing_price,
	order_quantity,
	recipe_quantity,
	order_quantity * recipe_quantity AS ordered_weight,
	ing_price/ing_weight AS unit_cost,
	(order_quantity * recipe_quantity) * (ing_price/ing_weight) AS ingredient_cost
FROM 
	(SELECT
		o.item_id,
		i.sku,
		i.item_name,
		SUM(o.quantity) AS order_quantity,
		r.ing_id,
		ing.ing_name,
		r.quantity AS recipe_quantity,
		ing.ing_weight,
		ing.ing_price
	FROM
		orders o
		LEFT JOIN item i ON o.item_id = i.item_id
		LEFT JOIN recipe r ON i.sku = r.recipe_id
		LEFT JOIN ingredient ing ON ing.ing_id = r.ing_id
	GROUP BY
		o.item_id, i.sku, i.item_name, r.ing_id, r.quantity, ing.ing_name, ing.ing_weight, ing.ing_price) s; 