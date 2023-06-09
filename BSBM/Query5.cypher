MATCH(product)-[:productFeature]-(prodFeature), 
WHERE NOT product = %productXYZ% 
  AND product.PropertyNumeric1 = numericproperty 
  AND prodFeature.productFeature= %ProductXYZ% 
  AND Q=%ProductXYZ% 
  AND product.simProperty1<product.origProperty1 + 120 
  AND product.simProperty1>product.origProperty1 - 120  
  AND  product.simProperty2<product.origProperty2 + 170  
  AND product.simProperty2>product.origProperty2 - 170 
RETURN DISTINCT product, product.productLabel 
ORDER BY product.productLabel 
LIMIT 5
