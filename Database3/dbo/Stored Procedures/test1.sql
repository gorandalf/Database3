create procedure test1 @tenantid int
as
EXEC SetContextInfo @tenantid ;
SELECT * FROM Inventory;
