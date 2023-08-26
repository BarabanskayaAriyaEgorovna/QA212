--1. Вывести полные имена врачей и их специализации.
SELECT Doctors.Name, Doctors.Surname, Specializations.Name
FROM Doctors join Vacations on Doctors.Id = Vacations.Id
             join Specializations on Vacations.Id = Specializations.Id
--2. Вывести фамилии и зарплаты (сумма ставки и надбавки) врачей, которые не находятся в отпуске.
SELECT Doctors.Surname, Doctors.Salary, Vacations.DoctorsId
FROM Doctors join Vacations on Doctors.Id = Vacations.DoctorsId
WHERE not Vacations.Id is not null
--3. Вывести названия палат, которые находятся в отделении “Лечебно-диагностическое отделение”.
SELECT Wards.Name
FROM Wards join Departments on Wards.Id = Departments.Id
WHERE Wards.Name like 'Лечебно-диагностическое отделение'
--4. Вывести названия отделений без повторений, которые спонсируются компанией “ООО Аргыс”.
SELECT DISTINCT Departments.Name
FROM Donations join Departments on Donations.Id = Departments.Id
               join Sponsors on Donations.SponsorsId = Sponsors.Id
WHERE Sponsors.Name = 'ООО Аргыс'
--5. Вывести все пожертвования за последний месяц в виде: отделение, спонсор, сумма пожертвования, дата пожертвования.
SELECT Departments.Name, Sponsors.Name, Donations.Amount, Donations.Date
FROM Donations join Departments on Donations.Id = Departments.Id
               join Sponsors on Donations.Id = Departments.Id
Where Donations.Date  BETWEEN '2023-04-01' and '2023-04-30'
--6. Вывести фамилии врачей с указанием отделений, в которых они проводят обследования. Необходимо учитывать обследования, проводимые только в будние дни.
SELECT Doctors.Surname, Departments.Name,  Examinations.dayofweek
FROM Doctors join DoctorsExaminations on Doctors.Id = DoctorsExaminations.Id
             join Wards on Departments.Id = Wards.Id
			 join Examinations on wards.id = Examinations.id
WHERE Examinations.dayofweek = '1' and Examinations.dayofweek = '5'
--7. Вывести названия палат и корпуса отделений, в которых проводит обследования врач “Helen Williams”.
SELECT Wards.Name, Doctors.Name, Wards.DepartmnetsId
FROM Doctors join Wards on Doctors.id = Wards.id
WHERE Doctors.Name = 'Helen Williams'
--8. Вывести названия отделений, которые получали пожертвование в размере больше 100000, с указанием их врачей.
SELECT Departmnest.Name, Doctors.Name, Donations.Amount
FROM  Departmnest join Donations on Donations.Id = Departmnest.Id
                  join Wards on Departmenst.Id = Wards.Id
				  join DoctorsExaminations on Wards.Id = DoctorsExaminations.Id
				  join Doctors on DoctorsExaminations.Id =  Doctors.Id
WHERE Donations.Amount > 1000
--9. Вывести названия отделений, в которых есть врачи не получающие надбавки.
SELECT Departmens.Name, Doctors.Premium
FROM Departmens join Wards on Departmens.Id =  Wards.Id
                join DoctorsExaminatoins on DoctorsExaminatoins.Id = Departmens.Id
				join Doctors on DoctorsExaminatoins.Id = Doctors.Id
WHERE Doctors.Name not Doctors.Premium              
--10. Вывести названия специализаций, которые используются для лечения заболеваний со степенью тяжести выше 3.
SELECT Specializations.Name, Diseases.Severity, Diseases.Name
FROM Specializations join Diseases on Specializations.Id = Diseases.Id
WHERE Diseases.Severity > 3
--11. Вывести названия отделений и заболеваний, обследования по которым они проводили за последние полгода.

--12. Вывести названия отделений и палат, в которых проводились обследования по заразительным заболеваниям.




