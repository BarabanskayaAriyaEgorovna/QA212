--1. ������� ������ ����� ������ � �� �������������.
SELECT Doctors.Name, Doctors.Surname, Specializations.Name
FROM Doctors join Vacations on Doctors.Id = Vacations.Id
             join Specializations on Vacations.Id = Specializations.Id
--2. ������� ������� � �������� (����� ������ � ��������) ������, ������� �� ��������� � �������.
SELECT Doctors.Surname, Doctors.Salary, Vacations.DoctorsId
FROM Doctors join Vacations on Doctors.Id = Vacations.DoctorsId
WHERE not Vacations.Id is not null
--3. ������� �������� �����, ������� ��������� � ��������� ��������-��������������� ���������.
SELECT Wards.Name
FROM Wards join Departments on Wards.Id = Departments.Id
WHERE Wards.Name like '�������-��������������� ���������'
--4. ������� �������� ��������� ��� ����������, ������� ������������ ��������� ���� �����.
SELECT DISTINCT Departments.Name
FROM Donations join Departments on Donations.Id = Departments.Id
               join Sponsors on Donations.SponsorsId = Sponsors.Id
WHERE Sponsors.Name = '��� �����'
--5. ������� ��� ������������� �� ��������� ����� � ����: ���������, �������, ����� �������������, ���� �������������.
SELECT Departments.Name, Sponsors.Name, Donations.Amount, Donations.Date
FROM Donations join Departments on Donations.Id = Departments.Id
               join Sponsors on Donations.Id = Departments.Id
Where Donations.Date  BETWEEN '2023-04-01' and '2023-04-30'
--6. ������� ������� ������ � ��������� ���������, � ������� ��� �������� ������������. ���������� ��������� ������������, ���������� ������ � ������ ���.
SELECT Doctors.Surname, Departments.Name,  Examinations.dayofweek
FROM Doctors join DoctorsExaminations on Doctors.Id = DoctorsExaminations.Id
             join Wards on Departments.Id = Wards.Id
			 join Examinations on wards.id = Examinations.id
WHERE Examinations.dayofweek = '1' and Examinations.dayofweek = '5'
--7. ������� �������� ����� � ������� ���������, � ������� �������� ������������ ���� �Helen Williams�.
SELECT Wards.Name, Doctors.Name, Wards.DepartmnetsId
FROM Doctors join Wards on Doctors.id = Wards.id
WHERE Doctors.Name = 'Helen Williams'
--8. ������� �������� ���������, ������� �������� ������������� � ������� ������ 100000, � ��������� �� ������.
SELECT Departmnest.Name, Doctors.Name, Donations.Amount
FROM  Departmnest join Donations on Donations.Id = Departmnest.Id
                  join Wards on Departmenst.Id = Wards.Id
				  join DoctorsExaminations on Wards.Id = DoctorsExaminations.Id
				  join Doctors on DoctorsExaminations.Id =  Doctors.Id
WHERE Donations.Amount > 1000
--9. ������� �������� ���������, � ������� ���� ����� �� ���������� ��������.
SELECT Departmens.Name, Doctors.Premium
FROM Departmens join Wards on Departmens.Id =  Wards.Id
                join DoctorsExaminatoins on DoctorsExaminatoins.Id = Departmens.Id
				join Doctors on DoctorsExaminatoins.Id = Doctors.Id
WHERE Doctors.Name not Doctors.Premium              
--10. ������� �������� �������������, ������� ������������ ��� ������� ����������� �� �������� ������� ���� 3.
SELECT Specializations.Name, Diseases.Severity, Diseases.Name
FROM Specializations join Diseases on Specializations.Id = Diseases.Id
WHERE Diseases.Severity > 3
--11. ������� �������� ��������� � �����������, ������������ �� ������� ��� ��������� �� ��������� �������.

--12. ������� �������� ��������� � �����, � ������� ����������� ������������ �� ������������� ������������.




