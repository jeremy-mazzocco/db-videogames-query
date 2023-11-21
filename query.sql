-- SELECT

1. SELECT * 
FROM `software_houses`;

2. SELECT * 
FROM `players` 
WHERE `city` = 'Rogahnland';

3. SELECT * 
FROM `players` 
WHERE `name` 
LIKE '%a';

4. SELECT * 
FROM `reviews` 
WHERE `player_id` = 800;

5. SELECT COUNT(*) 
FROM `tournaments` 
WHERE `year` =  2015;

6. SELECT * 
FROM `awards` 
WHERE `description` 
LIKE '%facere%';

7. SELECT * 
FROM `category_videogame` 
WHERE `category_id` = 2 OR `category_id` = 6;

8. SELECT * 
FROM `reviews` 
WHERE `rating` BETWEEN 2 AND 4;

9. SELECT * 
FROM `videogames` 
WHERE YEAR(release_date) = 2020;

10. SELECT DISTINCT `videogame_id` 
FROM `reviews` 
WHERE `rating` = 5 
ORDER BY `reviews`.`videogame_id` ASC;



-- GROUP BY

1. SELECT `country`, COUNT(*) as numero_software_house 
FROM `software_houses` 
GROUP BY `country`;

2. SELECT `videogame_id`, COUNT(*) 
FROM `reviews` 
GROUP BY `videogame_id`;

3. SELECT `videogame_id`, COUNT(*) 
FROM `pegi_label_videogame` 
GROUP BY `videogame_id`;

4. SELECT YEAR(`release_date`), COUNT(*) 
FROM `videogames` 
GROUP BY YEAR(`release_date`);

5. SELECT `device_id`, COUNT(*) 
FROM `device_videogame` 
GROUP BY `device_id`;

6. SELECT `videogame_id`, AVG(`rating`) as media_recensioni 
FROM `reviews` 
GROUP BY `videogame_id` 
ORDER BY media_recensioni DESC;



-- JOIN

1. SELECT DISTINCT players.*
FROM `players`
JOIN `reviews` ON `players.id` = `reviews.player_id`;

2. SELECT DISTINCT videogames.*
FROM `tournaments`
JOIN `tournament_videogame` ON tournaments.id = `tournament_videogame`.`tournament_id`
JOIN `videogames` ON `tournament_videogame`.`videogame_id` = `videogames.id`
WHERE YEAR(tournaments.year) = 2016;

3. SELECT DISTINCT videogames.*
FROM `tournaments`
JOIN `tournament_videogame` ON `tournaments.id` = `tournament_videogame.tournament_id`
JOIN `videogames` ON t`ournament_videogame.videogame_id` = `videogames.id`
WHERE YEAR(tournaments.year) = 2016;

4. SELECT DISTINCT software_houses.*
FROM `software_houses`
JOIN `videogames` ON `software_houses.id` = `videogames.software_house_id`
WHERE YEAR(videogames.release_date) > 2020;


5. SELECT software_houses.name, awards.name 
FROM `software_houses` 
JOIN `videogames` ON software_houses.id = videogames.software_house_id 
JOIN `award_videogame` ON videogames.id = award_videogame.videogame_id 
JOIN `awards` ON award_videogame.award_id = awards.id;


6. SELECT DISTINCT `categories.name`
FROM `reviews`
JOIN `videogames` ON reviews.id = videogames.id
JOIN `category_videogame` ON videogames.id = category_videogame.videogame_id
JOIN `categories` ON category_videogame.category_id = categories.id
WHERE reviews.rating IN (4, 5);
-- sbagliata