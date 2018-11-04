SELECT name, CAST(create_date as DATE) as 'create_date', 
    CAST(modify_date as DATE) as 'modify_date' 
FROM sys.triggers 
WHERE modify_date <= GETDATE() - 2
UNION ALL
SELECT DISTINCT sys.objects.name, CAST(create_date as DATE) as 'create_date', 
    CAST(modify_date as DATE) as 'modify_date' 
FROM sys.objects JOIN sys.parameters ON 
sys.objects.object_id = sys.parameters.object_id 
WHERE ([type] = 'FN' or [type] = 'P') and modify_date <= GETDATE() - 2