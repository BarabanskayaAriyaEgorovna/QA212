--1. ������� �������� ���������, � ������� ������ ������ ������������� ����� ���������.
SELECT LectureRoom.Name
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoom.Id
WHERE Teachers.Name like '����' and Teachers.Surname like '���������'
--2. ������� ������� �����������, �������� ������ � ������ ��104�.
SELECT Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoomId
              join Assistants on Assistants.TeacherId = Teachers.Id
WHERE LectureRoom.Name like '�104' and Teachers.Id = Assistants.TeacherId
--3. ������� ����������, ������� ������ ������������� ����� �������� ��� ����� 5-�� �����.
SELECT Subjects.Name, Teachers.Name, Groups.Year
FROM Teachers join Lectures on Teachers.Id = Lectures.Id
              join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
              join Subjects on Lectures.SubjectId = Lectures.Id
WHERE Teachers.Name like '����' and Groups.Year = '5'
--4. ������� ������� ��������������, ������� �� ������ ������ �� �������������.
SELECT Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
WHERE not DayOfWeek = '1'
--5. ������� �������� ���������, � ��������� �� ��������, � ������� ��� ������ � ����� ������ ������ �� ������� ����.
SELECT LectureRoom.Name, LectureRoom.Building, Lectures.SubjectId
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoomId
			  join Subjects on Lectures.SubjectId = Lectures.Id
WHERE not DayOfWeek = '3' and Week = '2' and Class = '3'
--6. ������� ������ ����� �������������� ���������� ���������� ����������� ������ � ���������������, ������� �� �������� ������ ������� �������� ������������ ������ �� ���� �� ��� ��͔.
SELECT Teachers.Name, Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
               join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
			  join Departments on Departments.Id = Groups.DepartmentId
			  join Faculties on Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = '��������� ����������� ������ � ���������������' or not Faculties.Name = '������� ������������ ������ �� ���� �� ��� ���'
--7. ������� ������ ������� ���� ��������, ������� ������� � �������� �����������, ������ � ���������.
SELECT LectureRooms.Building 
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureRoomId = Lectures.Id
              join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
			  join Departments on Departments.Id = Groups.DepartmentId
			  join Faculties on Departments.FacultyId = Faculties.Id
WHERE Faculties.Building = Departmens.Building 
--8. ������� ������ ����� �������������� � ��������� �������: ������ �����������, ���������� ���������, �������������, ��������, ����������.
SELECT Teachers.Name, Teachers.Surname
FROM Assistants join Teachers on Assistants.Id = Teachers.Id
                join Curators on Teachers.Id = Curators.Id
				join Deans on Teachers.Id = Deans.TeacherId
				join Heads on Teachers.Id = Heads.TeacherId
				join Departments on Heads.Id = Departments.HeadId
WHERE Heads.TeacherId = Departments.HeadId and Heads.TeacherId =  Teachers.Id and Heads.TeacherId = Curators.TeacherId and Heads.TeacherId =  Assistants.TeacherId
--9. ������� ��� ������ (��� ����������), � ������� ������� ������� � ���������� ��225� � ��102� ������� 6.
SELECT DISTINCT Schedules.DayOfWeek
FROM Schedules join LectureRooms on Schedules.LectureRoomId = Lectures.Id     
WHERE LectureRooms.Name = '�225' and '�102', LectureRooms.Building = '6'
