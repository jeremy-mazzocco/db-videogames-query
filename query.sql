1. SELECT * FROM `software_houses`;

2. SELECT * FROM `players` WHERE `city` = 'Rogahnland';

3. SELECT * FROM `players` WHERE `name` LIKE '%a';

4. SELECT * FROM `reviews` WHERE `player_id` = 800;

5. SELECT COUNT(*) FROM `tournaments` WHERE `year` =  2015;

6. SELECT * FROM `awards` WHERE `description` LIKE '%facere%';

7. SELECT * FROM `category_videogame` WHERE `category_id` = 2 OR `category_id` = 6;

8. SELECT * FROM `reviews` WHERE `rating` BETWEEN 2 AND 4;

9. SELECT * FROM `videogames` WHERE YEAR(release_date) = 2020;

10. SELECT DISTINCT `videogame_id` FROM `reviews` WHERE `rating` = 5 ORDER BY `reviews`.`videogame_id` ASC;