--1. Вывести названия аудиторий, в которых читает лекции преподаватель “Егор Комнатный”.
SELECT LectureRoom.Name
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoom.Id
WHERE Teachers.Name like 'Егор' and Teachers.Surname like 'Комнатный'
--2. Вывести фамилии ассистентов, читающих лекции в группе “В104”.
SELECT Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoomId
              join Assistants on Assistants.TeacherId = Teachers.Id
WHERE LectureRoom.Name like 'В104' and Teachers.Id = Assistants.TeacherId
--3. Вывести дисциплины, которые читает преподаватель “Анна Овалова” для групп 5-го курса.
SELECT Subjects.Name, Teachers.Name, Groups.Year
FROM Teachers join Lectures on Teachers.Id = Lectures.Id
              join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
              join Subjects on Lectures.SubjectId = Lectures.Id
WHERE Teachers.Name like 'Анна' and Groups.Year = '5'
--4. Вывести фамилии преподавателей, которые не читают лекции по понедельникам.
SELECT Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
WHERE not DayOfWeek = '1'
--5. Вывести названия аудиторий, с указанием их корпусов, в которых нет лекций в среду второй недели на третьей паре.
SELECT LectureRoom.Name, LectureRoom.Building, Lectures.SubjectId
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureId = Lectures.Id
			  join LectureRoom on Schedules.LectureRoomId = LectureRoomId
			  join Subjects on Lectures.SubjectId = Lectures.Id
WHERE not DayOfWeek = '3' and Week = '2' and Class = '3'
--6. Вывести полные имена преподавателей факультета “Факультет иностранных языков и лингводидактики”, которые не курируют группы кафедры “Кафедра динамических систем на базе СФ ИРЭ РАН”.
SELECT Teachers.Name, Teachers.Surname
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
               join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
			  join Departments on Departments.Id = Groups.DepartmentId
			  join Faculties on Departments.FacultyId = Faculties.Id
WHERE Faculties.Name = 'Факультет иностранных языков и лингводидактики' or not Faculties.Name = 'Кафедра динамических систем на базе СФ ИРЭ РАН'
--7. Вывести список номеров всех корпусов, которые имеются в таблицах факультетов, кафедр и аудиторий.
SELECT LectureRooms.Building 
FROM Teachers join Lectures on Lectures.TeacherId = Teachers.Id
              join Schedules on Schedules.LectureRoomId = Lectures.Id
              join GroupsLectures on GroupsLectures.Id = Lectures.Id
			  join Groups on GroupsLectures.GroupId = Groups.Id
			  join Departments on Departments.Id = Groups.DepartmentId
			  join Faculties on Departments.FacultyId = Faculties.Id
WHERE Faculties.Building = Departmens.Building 
--8. Вывести полные имена преподавателей в следующем порядке: деканы факультетов, заведующие кафедрами, преподаватели, кураторы, ассистенты.
SELECT Teachers.Name, Teachers.Surname
FROM Assistants join Teachers on Assistants.Id = Teachers.Id
                join Curators on Teachers.Id = Curators.Id
				join Deans on Teachers.Id = Deans.TeacherId
				join Heads on Teachers.Id = Heads.TeacherId
				join Departments on Heads.Id = Departments.HeadId
WHERE Heads.TeacherId = Departments.HeadId and Heads.TeacherId =  Teachers.Id and Heads.TeacherId = Curators.TeacherId and Heads.TeacherId =  Assistants.TeacherId
--9. Вывести дни недели (без повторений), в которые имеются занятия в аудиториях “М225” и “В102” корпуса 6.
SELECT DISTINCT Schedules.DayOfWeek
FROM Schedules join LectureRooms on Schedules.LectureRoomId = Lectures.Id     
WHERE LectureRooms.Name = 'М225' and 'В102', LectureRooms.Building = '6'
