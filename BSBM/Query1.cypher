MATCH(product:ProductType)-[:productFeature]-(ProductFeature1),(product:ProductType)-[:productFeature]-(ProductFeature2), 
WHERE product.productPropertyNumeric1>x  
RETURN  DISTINCT  product, product.label 
ORDER BY product.label 
LIMIT 10
