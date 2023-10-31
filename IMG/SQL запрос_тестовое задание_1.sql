CREATE TABLE animal_classes (
id INTEGER,
name VARCHAR
);

CREATE TABLE animal_owner (
name VARCHAR,
class INTEGER,
owner VARCHAR
);

INSERT INTO animal_classes (id, name)
VALUES 
(1, 'кошка'),
(2, 'собака'),
(3, 'мышка');	

INSERT INTO animal_owner (name, class, owner)
VALUES 
('Китти', 1, 'Ваня'),
('Митти', 2, 'Ваня'),
('Питти', 1, 'Петя'),
('Тикки', 2, 'Манас');	

--Сколько всего животных у вас (добавьте в ограничение ваше полное имя)?

SELECT *
FROM animal_owner;

SELECT COUNT(*)
FROM animal_owner
WHERE owner ='Манас';


--Уникальные имена всех кошек, отсортированные по алфавиту. Если вы родились в нечетный день, то от Я до А (ДР - 5 августа).

SELECT DISTINCT 	alow.name,
					alow.class AS class_id,
					alcls.id AS class_id
				
FROM animal_owner AS alow
INNER JOIN animal_classes AS alcls
ON alow.class = alcls.id
WHERE alcls.name = 'кошка'
ORDER BY alow.name DESC;

--Найти количество животных каждого класса. Вывести количество и имя класса для тех классов, количество животных в которых больше 8. Число 8 — (август - 8 месяц).

SELECT 	COUNT (alow.class) AS quantity,
		alcls.name AS class_name,
		alcls.id AS class
FROM animal_owner AS alow
INNER JOIN animal_classes AS alcls
ON alow.class = alcls.id
GROUP BY alcls.name, alcls.id
HAVING COUNT(alow.class) > 8
ORDER BY quantity DESC;

