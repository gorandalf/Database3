CREATE FUNCTION Security.udfSecurityCheck(@Tenant AS sysname)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN SELECT 1 AS udfSecurityCheck_result
WHERE @Tenant = CONVERT(int, CONVERT(varbinary(4), CONTEXT_INFO()));
