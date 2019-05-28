-- 1. специально вывел id и промежуточную таблицу, через которую строятся связи
-- 2. алиасы (короткие имена) не присваивал, т.к. это небольшая БД
-- 3. создавал БД и проверял запрос через phpMyAdmin
-- 4. название БД "test", в репозитории лежит дамп БД "dump.sql"
-- 5. если скрипт выдаст ошибку, то следует добавить в конец скрипта точку с запятой - ;

SELECT 
	product.id,
	product.name,
	product_category.id_product,
	product_category.id_category,
	category.name,
	category.id
FROM product 
	LEFT OUTER JOIN product_category ON product_category.id_product=product.id 
		LEFT OUTER JOIN category ON product_category.id_category=category.id