MATCH(ProductXYZ) 
OPTIONAL MATCH(X:offer)-[:product]-(ProductXYZ), 
(Z:vendor)-[:label]-(vendorTitle), 
(X:offer)-[:Z]-(vendor), 
(X:offer)-[:publisher]-(Z), 
(X:offer)-[:validTo]-(date), 
(Y:review)-[:reviewFor]-(ProductXYZ),
(Y:review)-[:title]-(title), 
(Y:review)-[:reviewDate]-(reviewDate), 
(P:reviewer)-[:name]-(reviewerName),  
(Y:review)-[:P]-(reviewer)  
WHERE  Y.country  IN ['India','Argentina'] %someDate%  
RETURN  productLabel, product.price, vendorTitle, revTitle, revName, rating1, rating2
