CREATE TABLE Invoice (
    InvoiceId INT NOT NULL PRIMARY KEY,
    UserId NVARCHAR(20) NULL,
    OrderDate DATETIME NULL,
    ExpectedDeliveryDate DATETIME NULL,
    ActualDeliveryDate DATETIME NULL,
    Name NVARCHAR(50) NULL,
    Address NVARCHAR(60) NULL,
    Payment NVARCHAR(50) NULL,
    ShippingCarrier NVARCHAR(50) NULL,
    ShippingCost FLOAT NULL,
    StatusId INT NULL,
    GhiChu NVARCHAR(50) NULL
);
GO

CREATE TABLE Status (
    StatusId INT NOT NULL PRIMARY KEY,
    Name NVARCHAR(50) NULL,
    Description NVARCHAR(500) NULL
);
GO
INSERT INTO Status (StatusId, Name, Description) VALUES 
(-1, N'Khách hàng hủy đơn hàng', NULL),
(0, N'Mới đặt hàng', NULL),
(1, N'Đã thanh toán', NULL),
(2, N'Chờ giao hàng', NULL),
(3, N'Đã giao hàng', NULL);
GO


DELETE FROM Status;
GO