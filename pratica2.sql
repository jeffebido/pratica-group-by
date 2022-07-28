

/* QUESTÃO 1 : */
SELECT COUNT("endDate") as "currentExperiences" FROM experiences;


/* QUESTÃO 2 : */
SELECT "userId" as "id", COUNT("userId") as educations FROM educations
GROUP BY "userId";


/* QUESTÃO 3 : */
SELECT users.name AS writer, COUNT(testimonials.message) AS "testimonailCount"
FROM testimonials
JOIN users ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name;

/* QUESTÃO 4 : */
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;
