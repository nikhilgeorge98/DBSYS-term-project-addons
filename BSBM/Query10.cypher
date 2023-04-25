MATCH(offer)-[:vendor]-(vendor),
(offer)-[:publisher]-(vendor),
(offer)-[:price]-(price),
(offer)-[:deliveryDays]-[deliveryDays]
WHERE vendor.country = %CountryXYZ%, 
offer.product = %ProductXYZ%,
offer.date > %currentDate%
RETURN DISTINCT offer, price
ORDER BY price
LIMIT 10
