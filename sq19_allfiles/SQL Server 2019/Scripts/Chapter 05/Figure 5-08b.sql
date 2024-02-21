USE AP;

SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors
FROM Vendors
WHERE VendorState IN ('IA', 'NJ')
GROUP BY CUBE(VendorState, VendorCity)
-- GROUP BY VendorState, VendorCity WITH CUBE -- Before 2008
ORDER BY VendorState DESC, VendorCity DESC;
