CREATE VIEW TelcoCleaned AS
SELECT
  customerID,
  gender,
  SeniorCitizen,
  Partner,
  Dependents,
  tenure,
  PhoneService,
  MultipleLines,
  InternetService,
  OnlineSecurity,
  OnlineBackup,
  DeviceProtection,
  TechSupport,
  StreamingTV,
  StreamingMovies,
  Contract,
  PaperlessBilling,
  PaymentMethod,
  CAST(MonthlyCharges AS REAL) AS MonthlyCharges,
  CAST(TotalCharges AS REAL) AS TotalCharges,
  Churn
FROM TelcoCustomerChurn
WHERE TotalCharges IS NOT NULL