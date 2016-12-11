 
CREATE PROCEDURE SetContextInfo(@TenantId int)
AS
SET CONTEXT_INFO @TenantId;
