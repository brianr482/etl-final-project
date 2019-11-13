CREATE VIEW `pc_usages_view` AS
    SELECT
        ddep.DEPTO AS 'DEPARTAMENTO',
        dpu.ENSEQ_NOMBRE AS `ENSEQ_NOMBRE`,
        fact.PC_USAGES_BY_SCCHOOL_AT_DEPARTMENT AS 'EQUIPOS DE CÓMPUTO'
    FROM
        world.fact_pc_usage fact
            INNER JOIN
        world.dim_department ddep ON ddep.COD_KEY = fact.DEPARTMENT_KEY
            INNER JOIN
        world.dim_pc_usages dpu ON dpu.COD_KEY = fact.PC_USAGES_KEY