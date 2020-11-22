/*made this file myself so it does not get updates-was unable to refork
/* get all the ingredients with names */ 
SELECT r.name AS 'Recipe', r.instructions, ri.amount AS 'Amount', mu.name AS 'Unit of Measure', i.name AS 'Ingredient' 
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id;

/*get a list of recipes */ 
SELECT * 
JOIN RecipeIngredient on Recipe.id = RecipeIngredient.recipe_id
JOIN Ingredient on Ingredient.id = RecipeIngredient.ingredient_id
LEFT OUTER JOIN Measure on Measure.id = measure_id;

/*
get a specific ingredient 
this command is incomplete, the last item on the right hand side of the equals sign needs to be added
*/ 

SELECT *
From Recipe r
JOIN RecipeIngredient ri on ri.recipe_id = r.id  
JOIN Ingredient i on i.id = ri.ingredient_id 
WHERE i.name = 'bread'

/*update----never got this this one figured out*/
UPDATE RecipeIngredient_name
SET bread = Sandwhich Bread
WHERE RecipeIngredient_11;