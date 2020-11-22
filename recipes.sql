/*create tables and parameters and values to put the recipes into*/
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 


/*measurements*/
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE'), ('SLICES');

/*all ingredients*/
INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour'), ('cereal'), ('milk'), ('oatmeal package'), ('water'),('bread'), ('peanut'), ('jelly'), ('lemon juice'), ('sugar'), ('butter'), ('cheese');


/*recipe instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');
INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');
INSERT INTO Recipe (name, description, instructions) VALUES('Cereal Bowl', 'Fastest breakfast', 'Add cereal to bowl, milk to bowl. eat right away');
INSERT INTO Recipe (name, description, instructions) VALUES('Oatmeal', 'Instant Oatmeal', 'Add oatmeal and water. Microwave for 2 minutes.');
INSERT INTO Recipe (name, description, instructions) VALUES('PB&J', 'Peanut Butter and Jelly Sandwhich', 'Spread Jelly on one scile of bread. Spread peanut butter on the other slices of bread. Lay the two slices together so that the jelly and peanut butter are touching to make a sandwhich');
INSERT INTO Recipe (name, description, instructions) VALUES('Lemonade', 'Fresh Lemonade', 'Add lemon juice to pitcher, add sugar and water. Stir and add more sugar to taste');
INSERT INTO Recipe (name, description, instructions) VALUES('Grilled Cheese Sandwich', 'Grilled Cheese Sandwhich', 'Spread butter onto one side of each slice of bread. Lay one slice of bread butter side down into the hot pan. Lay cheese slices on top of the bread, and then lay the other peice of bread butter side up over the cheese. Once toasted flip over to taost the other side.');


/* boiled egg*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

/*chocolate cake*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);

/*cereal*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 7, NUll, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 8, NUll, 1);

/*oatmeal*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 9, NUll, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 10, 1, 1);

/*peanut butter and jelly*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 11, 5, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 12, 1, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 13, 1, 1);

/*lemonade*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 10, NUll, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 14, NULL, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 15, NULL, 1);

/*Grilled Cheese Sandwich*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 11, 5, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 16, NULL, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 17, NULL, 1);

