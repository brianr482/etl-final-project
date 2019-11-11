CREATE VIEW `enrollments_view` AS
    SELECT
		dschool.SEDE_NOMBRE AS 'COLEGIO',
        dschool.SEDE_CODIGO,
		ddep.DEPTO AS 'DEPARTAMENTO',
        dcity.MUNI AS 'MUNICIPIO',
        darea.AREA_NOMBRE AS 'AREA',
        dperiod.PERIODO_ANIO AS 'AÑO',
        dcharacter.CARACTER_NOMBRE AS 'CARACTER',
        delevel.NIVELENSE_NOMBRE AS 'NIVEL_DE_ENSEÑANZA',
        dsday.JORNADA_NOMBRE AS 'JORNADA',
        fact.ENROLLED_STUDENTS AS 'TOTAL DE MATRICULADOS'
    FROM
        world.fact_enrollments fact
			LEFT JOIN
		world.dim_department ddep ON ddep.COD_KEY = fact.DEPARTMENT_KEY
            LEFT JOIN
        world.dim_city dcity ON dcity.COD_KEY = fact.CITY_KEY
            LEFT JOIN
        world.dim_school dschool ON dschool.COD_KEY = fact.SCHOOL_KEY
            LEFT JOIN
        world.dim_area darea ON darea.COD_KEY = fact.AREA_KEY
            LEFT JOIN
        world.dim_period dperiod ON dperiod.COD_KEY = fact.PERIOD_KEY
            LEFT JOIN
        world.dim_character dcharacter ON dcharacter.COD_KEY = fact.CHARACTER_KEY
            LEFT JOIN
        world.dim_education_level delevel ON delevel.COD_KEY = fact.EDUCATION_LEVEL_KEY
            LEFT JOIN
        world.dim_school_day dsday ON dsday.COD_KEY = fact.SCHOOL_DAY_KEY