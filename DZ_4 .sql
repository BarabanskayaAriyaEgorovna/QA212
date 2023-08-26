-- 1. Вывести все возможные пары строк преподавателей и групп.

SELECT *  
FROM Teachers, Groups;
GO

-- 2. Вывести названия факультетов, фонд финансирования
-- кафедр которых превышает фонд финансирования факультета.

SELECT Faculties. Name AS 'Названия факультетов'
FROM Departments JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Departments.Financing > Faculties.Financing;
GO

-- 3. Вывести фамилии кураторов групп и названия групп, ко-
-- торые они курируют.

SELECT Curators.Surname AS 'Фамилии кураторов', Groups.Name AS 'Названия групп'
FROM   Curators JOIN GroupsCurators ON Curators.Id = GroupsCurators.CuratorId
                JOIN Groups ON GroupsCurators.GroupId = Groups.Id;
GO

-- 4. Вывести имена и фамилии преподавателей, которые читают
-- лекции у группы “P107”.

SELECT Teachers.Name AS 'Имя',Teachers.Surname AS 'Фамилии'
FROM Teachers JOIN Lectures ON TeacherId = Lectures.TeacherId
              JOIN GroupsLectures ON LectureId = GroupsLectures.LectureId
			  JOIN Groups ON GroupsLectures.GroupId = GroupId
WHERE Groups.Name = 'P107';
GO

-- 5. Вывести фамилии преподавателей и названия факультетов
-- на которых они читают лекции.

SELECT Teachers.Surname AS 'Фамилия' , 
       Faculties.Name AS 'Название факультета'
FROM   Teachers JOIN Lectures ON TeacherId = Lectures.TeacherId
                JOIN GroupsLectures ON LectureId = GroupsLectures.LectureId
				JOIN Groups ON GroupsLectures.GroupId = GroupId
				JOIN Departments ON Groups.DepartmentId = Departments.Id 
				JOIN Faculties ON Departments.FacultyId = Faculties.Id;
GO

-- 6. Вывести названия кафедр и названия групп, которые к
-- ним относятся.

SELECT Departments.Name AS 'Название кафедры',
       Groups. Name AS 'Названия групп'     
FROM Departments JOIN  Groups ON Departments.ID = Groups.DepartmentId
GO

-- 7. Вывести названия дисциплин, которые читает препода-
-- ватель “Samantha Adams”.

SELECT Subjects.Name AS 'Названия дисциплины'
FROM Subjects JOIN Lectures ON Subjects.Id = Lectures.SubjectId
              JOIN Teachers ON Lectures.TeacherId = Teachers.Id
WHERE Teachers.Name = 'Егор' AND Teachers.Surname = 'Комнатный' ;
GO

-- 8. Вывести названия кафедр, на которых читается дисциплина
-- “Database Theory”.

SELECT Departments.Name AS 'Название кафедры'
FROM   Departments JOIN Groups ON Departments.Id = Groups.DepartmentId
                   JOIN GroupsLectures ON Groups.Id = GroupsLectures.GroupId
				   JOIN Lectures ON Groups.Id = Lectures.Id
				   JOIN Subjects ON Groups.Id = Subjects.Id
WHERE Subjects.Name = 'Database Theory';
GO

-- 9. Вывести названия групп, которые относятся к факультету
-- “Computer Science”.

SELECT Groups.Name AS 'Название группы'
FROM   Groups JOIN Departments ON Groups.DepartmentId = Departments.ID
              JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = 'Computer Science';
GO

-- 10. Вывести названия групп 5-го курса, а также название фа-
-- культетов, к которым они относятся.

SELECT Groups.Name AS 'Группа', Faculties.Name AS 'Факультет'
FROM   Groups JOIN Departments ON Groups.DepartmentId = Departments.Id
              JOIN Faculties ON Departments.FacultyId = Faculties.Id
WHERE  Groups.Year = '5';
GO

-- 11. Вывести полные имена преподавателей и лекции, которые
-- они читают (названия дисциплин и групп), причем отобрать
-- только те лекции, которые читаются в аудитории “B103”.

SELECT  Teachers.Name + '' + Teachers.Surname AS 'Полное имя',
        Subjects.Name + '' + Groups.Name AS 'Лекции'
FROM Teachers JOIN Lectures ON Teachers.Id = Lectures.TeacherId
              JOIN Subjects ON Lectures.SubjectId = Subjects.Id
			  JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
			  JOIN Groups ON GroupsLectures.GroupId = Groups.Id
WHERE Lectures.LectureRoom = 'B103';
GO