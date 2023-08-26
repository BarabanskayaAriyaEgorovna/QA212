--1. ������� ���������� ������� �����.
SELECT *
FROM Wards
--2. ������� ������� � �������� ���� ������.
SELECT Surname, Phone
FROM Doctors
--3. ������� ��� ����� ��� ����������, �� ������� ������������� ������.
SELECT DISTINCT  Name, Floor
From Wards
--4. ������� �������� ����������� ��� ������ �Name of Disease� � ������� �� ������� ��� ������ �Severity of Disease�.
SELECT Name as 'Name of Disease', Severity as 'Severity of Disease'
FROM Diseases
--5. ������������ ��������� FROM ��� ����� ���� ������ ���� ������, ��������� ��� ��� ����������.
SELECT De.Name, Di.Severity, Do.name
FROM Departmnets AS De, Diseases AS Di, Doctors AS Do
--6. ������� �������� ���������, ������������� � ������� 5 � ������� ���� �������������� ����� 30000.
SELECT Name, Financing, Building                                                                        --������� ������� �� ���������� ������
FROM Departmnets
WHERE Building = '5' and Financing !< 30000
--7. ������� �������� ���������, ������������� � 3-� �������� ������ �������������� � ��������� �� 12000 �� 15000.
SELECT Name, Financing, Building                                                               --������� ������� �� ���������� ������
FROM Departmnets
WHERE Building = '3' and Financing >= 12000 and Financing !> 15000
--8. ������� �������� �����, ������������� � �������� 4 � 5 �� 1-� �����.
SELECT Name, Building, Floor                                                                                                
FROM Wards
WHERE (Building = '4' or Building = '5') and Floor = 1
--9. ������� ��������, ������� � ����� �������������� ���������, ������������� � �������� 3 ��� 6 � ������� ���� �������������� ������ 11000 ��� ������ 25000.
SELECT Name, Building, Financing
FROM Departmnets                                                                                                             
WHERE (Building = '3' or Building ='6') or Financing < 11000 and Financing > 25000
--10. ������� ������� ������, ��� �������� (����� ������ � ��������) ��������� 1500.
SELECT Surname, Premium, Salary                                                               --������� ������� �� ���������� ������
FROM Doctors
WHERE Premium+Salary  > 1500 
--11. ������� ������� ������, � ������� �������� �������� ��������� ����������� ��������.
SELECT Surname, salary/2 as '��� ��', premium*3 AS '3 ��������'                               --������� ������� �� ���������� ������
FROM Doctors
Where '��� ��' > '3 ��������'
--12. ������� �������� ������������ ��� ����������, ���������� � ������ ��� ��� ������ � 12:00 �� 15:00.
SELECT DISTINCT Name,Starttime, Endtime                                                             --� ���� ������� ����� ����� ������, ��� ��� ������ 3 ��� ���� ������������ �� ��������� �������
FROM Examinations
WHERE DayOfWeek in ('1','2','3', '5') and Starttime >= '12:00:00' and  Endtime < '15:00:00'
--13. ������� �������� � ������ �������� ���������, ������������� � �������� 1, 3, 8 ��� 10.
SELECT Name, Building, Floor
FROM Departmnets
WHERE Floor in ('1','3','8','10')
--14. ������� �������� ����������� ���� �������� �������, ����� 1-� � 2-�.
SELECT Name, Severity
FROM Diseases
WHERE Severity not in ('1','3')
--15. ������� �������� ���������, ������� �� ������������� � 1-� ��� 3-� �������.
SELECT Name, Building
FROM Departmnets
WHERE Building not in ('1','3')
--16.  �������� ���������, ������� ������������� � 1-� ��� 3-� �������.
SELECT Name, Building
FROM Departmnets
WHERE Building  in ('1','3')
--17. ������� ������� ������, ������������ �� ����� �N� 
SELECT Surname
FROM Doctors
WHERE Surname LIKE '[�]%'