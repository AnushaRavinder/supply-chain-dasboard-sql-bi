
-- KPI Queries

-- Total Orders
SELECT COUNT(DISTINCT OrderID) AS TotalOrders FROM CleanedSupplyChain;

-- On-Time Delivery Rate
SELECT 
  ROUND(
    100.0 * SUM(CASE WHEN LeadTimeDays <= 5 THEN 1 ELSE 0 END) / COUNT(*), 
    2
  ) AS OnTimeDeliveryRate
FROM CleanedSupplyChain;

-- Inventory Turnover Ratio (Assuming we add inventory data later)
-- Placeholder logic
-- SELECT SUM(UnitsDelivered) / AVG(Inventory) AS InventoryTurnover FROM InventoryTable;

-- Stockout Rate
SELECT 
  ROUND(
    100.0 * SUM(CASE WHEN UnitsDelivered < UnitsOrdered THEN 1 ELSE 0 END) / COUNT(*), 
    2
  ) AS StockoutRate
FROM CleanedSupplyChain;

-- Average Lead Time
SELECT AVG(LeadTimeDays) AS AvgLeadTime FROM CleanedSupplyChain;

-- Top 5 Products by Revenue
SELECT ProductName, SUM(TotalRevenue) AS Revenue
FROM CleanedSupplyChain
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 5;

-- Supplier Performance (On-Time Delivery %)
SELECT Supplier,
  ROUND(
    100.0 * SUM(CASE WHEN LeadTimeDays <= 5 THEN 1 ELSE 0 END) / COUNT(*), 
    2
  ) AS OnTimeDeliveryRate
FROM CleanedSupplyChain
GROUP BY Supplier;
