CREATE TABLE [dbo].[Inventory] (
    [InventoryID] INT            NOT NULL,
    [TenantID]    INT            NULL,
    [Product]     NVARCHAR (255) NULL,
    [UnitPrice]   MONEY          NULL,
    CONSTRAINT [PK] PRIMARY KEY CLUSTERED ([InventoryID] ASC)
);


GO
GRANT DELETE
    ON OBJECT::[dbo].[Inventory] TO [AppUser]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[Inventory] TO [AppUser]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[Inventory] TO [AppUser]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[Inventory] TO [AppUser]
    AS [dbo];


GO
DENY UPDATE
    ON [dbo].[Inventory] ([TenantID]) TO [AppUser]
    AS [dbo];

