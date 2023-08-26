--1. Вывести содержимое таблицы палат.
SELECT *
FROM Wards
--2. Вывести фамилии и телефоны всех врачей.
SELECT Surname, Phone
FROM Doctors
--3. Вывести все этажи без повторений, на которых располагаются палаты.
SELECT DISTINCT  Name, Floor
From Wards
--4. Вывести названия заболеваний под именем “Name of Disease” и степень их тяжести под именем “Severity of Disease”.
SELECT Name as 'Name of Disease', Severity as 'Severity of Disease'
FROM Diseases
--5. Использовать выражение FROM для любых трех таблиц базы данных, используя для них псевдонимы.
SELECT De.Name, Di.Severity, Do.name
FROM Departmnets AS De, Diseases AS Di, Doctors AS Do
--6. Вывести названия отделений, расположенных в корпусе 5 и имеющих фонд финансирования менее 30000.
SELECT Name, Financing, Building                                                                        --условия запроса не правильный походу
FROM Departmnets
WHERE Building = '5' and Financing !< 30000
--7. Вывести названия отделений, расположенных в 3-м корпусес фондом финансирования в диапазоне от 12000 до 15000.
SELECT Name, Financing, Building                                                               --условия запроса не правильный походу
FROM Departmnets
WHERE Building = '3' and Financing >= 12000 and Financing !> 15000
--8. Вывести названия палат, расположенных в корпусах 4 и 5 на 1-м этаже.
SELECT Name, Building, Floor                                                                                                
FROM Wards
WHERE (Building = '4' or Building = '5') and Floor = 1
--9. Вывести названия, корпуса и фонды финансирования отделений, расположенных в корпусах 3 или 6 и имеющих фонд финансирования меньше 11000 или больше 25000.
SELECT Name, Building, Financing
FROM Departmnets                                                                                                             
WHERE (Building = '3' or Building ='6') or Financing < 11000 and Financing > 25000
--10. Вывести фамилии врачей, чья зарплата (сумма ставки и надбавки) превышает 1500.
SELECT Surname, Premium, Salary                                                               --условия запроса не правильный походу
FROM Doctors
WHERE Premium+Salary  > 1500 
--11. Вывести фамилии врачей, у которых половина зарплаты превышает троекратную надбавку.
SELECT Surname, salary/2 as 'пол ЗП', premium*3 AS '3 надбавка'                               --условия запроса не правильный походу
FROM Doctors
Where 'пол ЗП' > '3 надбавка'
--12. Вывести названия обследований без повторений, проводимых в первые три дня недели с 12:00 до 15:00.
SELECT DISTINCT Name,Starttime, Endtime                                                             --в этом запросе ответ будет пустым, так как первые 3 дня нету обследований по заданному времени
FROM Examinations
WHERE DayOfWeek in ('1','2','3', '5') and Starttime >= '12:00:00' and  Endtime < '15:00:00'
--13. Вывести названия и номера корпусов отделений, расположенных в корпусах 1, 3, 8 или 10.
SELECT Name, Building, Floor
FROM Departmnets
WHERE Floor in ('1','3','8','10')
--14. Вывести названия заболеваний всех степеней тяжести, кроме 1-й и 2-й.
SELECT Name, Severity
FROM Diseases
WHERE Severity not in ('1','3')
--15. Вывести названия отделений, которые не располагаются в 1-м или 3-м корпусе.
SELECT Name, Building
FROM Departmnets
WHERE Building not in ('1','3')
--16.  названия отделений, которые располагаются в 1-м или 3-м корпусе.
SELECT Name, Building
FROM Departmnets
WHERE Building  in ('1','3')
--17. Вывести фамилии врачей, начинающиеся на букву “N” 
SELECT Surname
FROM Doctors
WHERE Surname LIKE '[П]%'