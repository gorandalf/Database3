CREATE SECURITY POLICY [Security].[TenantPolicy]
    ADD FILTER PREDICATE [Security].[udfSecurityCheck]([TenantID]) ON [dbo].[Inventory],
    ADD BLOCK PREDICATE [Security].[udfSecurityCheck]([TenantID]) ON [dbo].[Inventory]
    WITH (STATE = ON);

