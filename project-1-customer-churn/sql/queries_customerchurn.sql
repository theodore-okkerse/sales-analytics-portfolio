-- Churn Distribution
SELECT Churn, COUNT(Churn) AS Count
FROM TelcoCustomerChurn
GROUP BY Churn;

-- Column Types
PRAGMA table_info(TelcoCustomerChurn);

-- Check for Missing Info
SELECT 
  SUM(CASE WHEN customerID IS NULL OR customerID = '' THEN 1 ELSE 0 END) AS MissingCustomerID,
  SUM(CASE WHEN TotalCharges IS NULL OR TotalCharges = '' THEN 1 ELSE 0 END) AS MissingTotalCharges,
  SUM(CASE WHEN tenure IS NULL THEN 1 ELSE 0 END) AS MissingTenure
FROM TelcoCustomerChurn;

-- Cast Charge Columns as REAL/Numbers
SELECT 
  CAST(MonthlyCharges AS REAL) AS MonthlyCharges,
  CAST(TotalCharges AS REAL) AS TotalCharges
FROM TelcoCustomerChurn;