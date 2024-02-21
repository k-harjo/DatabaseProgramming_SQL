USE AP;

SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors
FROM Vendors
WHERE VendorState IN ('IA', 'NJ')
GROUP BY ROLLUP(VendorState, VendorCity)
-- GROUP BY VendorState, VendorCity WITH ROLLUP -- Before 2008
ORDER BY VendorState DESC, VendorCity DESC;

