
-- Data Cleaning Script
-- Create a cleaned table from raw data

CREATE TABLE CleanedSupplyChain AS
SELECT
    OrderID,
    CAST(OrderDate AS DATE) AS OrderDate,
    CAST(DeliveryDate AS DATE) AS DeliveryDate,
    ProductID,
    ProductName,
    Category,
    Supplier,
    UnitsOrdered,
    UnitsDelivered,
    UnitPrice,
    Warehouse,
    Region,
    (UnitsOrdered - UnitsDelivered) AS UnitsShort,
    (UnitsDelivered * UnitPrice) AS TotalRevenue,
    DATEDIFF(day, OrderDate, DeliveryDate) AS LeadTimeDays
FROM RawSupplyChainData
WHERE UnitsOrdered > 0
  AND UnitPrice > 0;
