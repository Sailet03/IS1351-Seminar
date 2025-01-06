SELECT
	TO_CHAR(date, 'Month') AS "Month",
	COUNT(CASE WHEN induvidualLessonId IS NOT NULL OR groupLessonId IS NOT NULL OR ensambleId IS NOT NULL THEN 1 END) AS "Total",
	COUNT(CASE WHEN induvidualLessonId IS NOT NULL THEN 1 END) AS "Induvidual",
	COUNT(CASE WHEN groupLessonId IS NOT NULL THEN 1 END) AS "Group",
	COUNT(CASE WHEN ensambleId IS NOT NULL THEN 1 END) AS "Ensamble"
FROM Booking
WHERE EXTRACT(YEAR FROM date) = 2023
GROUP BY TO_CHAR(date, 'Month'), DATE_PART('Month', date)
ORDER BY DATE_PART('Month', date);



SELECT occ AS "No of Siblings", COUNT(*) as "No of Students"
FROM (
	SELECT COUNT(*)-1 AS occ
	FROM (
		SELECT studentId AS id FROM Siblings
		UNION ALL
		SELECT siblingStudentId AS id FROM Siblings
		UNION ALL
		SELECT studentid AS id FROM Student
	) combined
	GROUP BY id
	)
GROUP BY occ
ORDER BY occ;





SELECT combined.id, Teacher.name, COUNT(*) AS "Total Lessons"
FROM (
	SELECT Ensamble.teacherId AS id, Booking.date 
	FROM Ensamble 
	JOIN Booking ON Ensamble.lessonId = Booking.ensambleId
	UNION ALL
	SELECT GroupLesson.teacherId AS id, Booking.date 
	FROM GroupLesson 
	JOIN Booking ON GroupLesson.lessonId = Booking.groupLessonId
	UNION ALL
	SELECT IndividualLesson.teacherId AS id, Booking.date 		
	FROM IndividualLesson 
	JOIN Booking ON IndividualLesson.lessonId = Booking.induvidualLessonId
) combined
INNER JOIN Teacher ON combined.id = Teacher.teacherId
WHERE EXTRACT(YEAR FROM date) = 2023 AND EXTRACT(MONTH FROM date) = 6 
GROUP BY combined.id , Teacher.name
ORDER BY COUNT(*);



SELECT TO_CHAR(Booking.date, 'Day') AS "Day", Ensamble.genre AS "Genre", Ensamble.maxStudents-COUNT(*) AS "No of Free Seats"
FROM Ensamble 
INNER JOIN Booking ON Ensamble.lessonId = Booking.ensambleId
WHERE EXTRACT(WEEK FROM date) = 24 AND EXTRACT(YEAR FROM date) = 2023 
GROUP BY Booking.Date, Ensamble.genre, Ensamble.maxStudents;


