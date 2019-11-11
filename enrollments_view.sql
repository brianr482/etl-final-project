CREATE VIEW `enrollments_view` AS
    SELECT 
        sch.SEDE_NOMBRE,
        fe.ENROLLED_STUDENTS AS 'TOTAL DE MATRICULADOS'
    FROM
        world.fact_enrollments fe
            INNER JOIN
        world.oltp_schools sch ON sch.SEDE_CODIGO = fe.SEDE_CODIGO