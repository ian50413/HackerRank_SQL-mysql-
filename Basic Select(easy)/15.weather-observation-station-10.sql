SELECT DISTINCT(CITY)
FROM STATION
WHERE LCASE(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u')
;