SELECT COUNT(maker) FROM (SELECT DISTINCT maker, model FROM Product WHERE maker = 'A' AND type = 'PC') X;

SELECT model, 'laptop' AS 'laptop' FROM Laptop WHERE EXISTS (SELECT model FROM Product WHERE Product.model=Laptop.model AND maker='B') UNION SELECT model, 'PC' AS 'PC' FROM PC WHERE EXISTS (SELECT model FROM Product WHERE Product.model=PC.model AND maker='B');