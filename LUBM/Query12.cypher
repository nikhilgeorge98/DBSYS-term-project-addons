MATCH(X:Chair)-[:worksFor]-(Y:Department) 
WHERE Y:subOrganizationOf= “http://www.University0.edu” 
RETURN X,Y
