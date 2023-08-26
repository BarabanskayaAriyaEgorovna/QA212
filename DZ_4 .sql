-- 1. ������� ��� ��������� ���� ����� �������������� � �����.

SELECT *  
FROM Teachers, Groups;
GO

-- 2. ������� �������� �����������, ���� ��������������
-- ������ ������� ��������� ���� �������������� ����������.

SELECT Faculties. Name AS '�������� �����������'
FROM Departments JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Departments.Financing > Faculties.Financing;
GO

-- 3. ������� ������� ��������� ����� � �������� �����, ��-
-- ����� ��� ��������.

SELECT Curators.Surname AS '������� ���������', Groups.Name AS '�������� �����'
FROM   Curators JOIN GroupsCurators ON Curators.Id = GroupsCurators.CuratorId
                JOIN Groups ON GroupsCurators.GroupId = Groups.Id;
GO

-- 4. ������� ����� � ������� ��������������, ������� ������
-- ������ � ������ �P107�.

SELECT Teachers.Name AS '���',Teachers.Surname AS '�������'
FROM Teachers JOIN Lectures ON TeacherId = Lectures.TeacherId
              JOIN GroupsLectures ON LectureId = GroupsLectures.LectureId
			  JOIN Groups ON GroupsLectures.GroupId = GroupId
WHERE Groups.Name = 'P107';
GO

-- 5. ������� ������� �������������� � �������� �����������
-- �� ������� ��� ������ ������.

SELECT Teachers.Surname AS '�������' , 
       Faculties.Name AS '�������� ����������'
FROM   Teachers JOIN Lectures ON TeacherId = Lectures.TeacherId
                JOIN GroupsLectures ON LectureId = GroupsLectures.LectureId
				JOIN Groups ON GroupsLectures.GroupId = GroupId
				JOIN Departments ON Groups.DepartmentId = Departments.Id 
				JOIN Faculties ON Departments.FacultyId = Faculties.Id;
GO

-- 6. ������� �������� ������ � �������� �����, ������� �
-- ��� ���������.

SELECT Departments.Name AS '�������� �������',
       Groups. Name AS '�������� �����'     
FROM Departments JOIN  Groups ON Departments.ID = Groups.DepartmentId
GO

-- 7. ������� �������� ���������, ������� ������ �������-
-- ������ �Samantha Adams�.

SELECT Subjects.Name AS '�������� ����������'
FROM Subjects JOIN Lectures ON Subjects.Id = Lectures.SubjectId
              JOIN Teachers ON Lectures.TeacherId = Teachers.Id
WHERE Teachers.Name = '����' AND Teachers.Surname = '���������' ;
GO

-- 8. ������� �������� ������, �� ������� �������� ����������
-- �Database Theory�.

SELECT Departments.Name AS '�������� �������'
FROM   Departments JOIN Groups ON Departments.Id = Groups.DepartmentId
                   JOIN GroupsLectures ON Groups.Id = GroupsLectures.GroupId
				   JOIN Lectures ON Groups.Id = Lectures.Id
				   JOIN Subjects ON Groups.Id = Subjects.Id
WHERE Subjects.Name = 'Database Theory';
GO

-- 9. ������� �������� �����, ������� ��������� � ����������
-- �Computer Science�.

SELECT Groups.Name AS '�������� ������'
FROM   Groups JOIN Departments ON Groups.DepartmentId = Departments.ID
              JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = 'Computer Science';
GO

-- 10. ������� �������� ����� 5-�� �����, � ����� �������� ��-
-- ���������, � ������� ��� ���������.

SELECT Groups.Name AS '������', Faculties.Name AS '���������'
FROM   Groups JOIN Departments ON Groups.DepartmentId = Departments.Id
              JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE  Groups.Year = '5';
GO

-- 11. ������� ������ ����� �������������� � ������, �������
-- ��� ������ (�������� ��������� � �����), ������ ��������
-- ������ �� ������, ������� �������� � ��������� �B103�.

SELECT  Teachers.Name + '' + Teachers.Surname AS '������ ���',
        Subjects.Name + '' + Groups.Name AS '������'
FROM Teachers JOIN Lectures ON Teachers.Id = Lectures.TeacherId
              JOIN Subjects ON Lectures.SubjectId = Subjects.Id
			  JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
			  JOIN Groups ON GroupsLectures.GroupId = Groups.Id
WHERE Lectures.LectureRoom = 'B103';
GO