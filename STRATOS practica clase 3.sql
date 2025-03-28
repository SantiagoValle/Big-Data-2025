/* 1) */ SELECT nombre FROM alumno;
/* 2) */ SELECT DISTINCT ciudad FROM docente;
/* 3) */ SELECT nombre FROM materia WHERE codigo > 102;
/* 4) */ SELECT nombre FROM alumno WHERE ciudad = 'Córdoba';
/* 5) */ SELECT materia.nombre, cursa.nota
FROM materia, cursa
WHERE cursa.codigo = materia.codigo
  AND cursa.legajo = 2;
/* 6) */ SELECT a.nombre AS alumno, m.nombre AS materia
FROM alumno a, materia m, cursa c
WHERE a.legajo = c.legajo
  AND m.codigo = c.codigo;
/* 7) */ SELECT nombre
FROM alumno
WHERE legajo IN (
  SELECT legajo
  FROM cursa
  WHERE nota = 10);
/* 8) */ SELECT DISTINCT d.nombre
FROM docente d
WHERE d.ciudad IN (
  SELECT ciudad
  FROM alumno);
/* 9) */ SELECT DISTINCT d.nombre
FROM docente d
WHERE d.ciudad NOT IN (
  SELECT ciudad
  FROM alumno);
/* 10) */ SELECT a.nombre
FROM alumno a
LEFT JOIN cursa c ON a.legajo = c.legajo
WHERE c.legajo IS NULL;
/* 11) */ SELECT m.nombre
FROM materia m
LEFT JOIN cursa c ON m.codigo = c.codigo
WHERE c.codigo IS NULL;
/* 12) */ SELECT d.nombre, COUNT(*) AS cantidad_materias
FROM docente d
JOIN dicta di ON d.legajo = di.legajo
GROUP BY d.nombre;
/* 13) */ SELECT a.nombre
FROM alumno a
JOIN cursa c ON a.legajo = c.legajo
WHERE c.codigo = 103
  AND c.nota BETWEEN 6 AND 8;
/* 14) */ SELECT nombre
FROM alumno
WHERE ciudad = 'Mar del Plata'
  AND nombre NOT LIKE '%a%';
/* 15) */ SELECT a.nombre
FROM alumno a
JOIN cursa c ON a.legajo = c.legajo
WHERE c.codigo IN (101, 105)
  AND c.nota < 7;
