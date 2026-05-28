SELECT Gender, 
COUNT(Gender) as TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_churn) as Percentage
FROM stg_churn
GROUP BY Gender;

SELECT Contract, 
COUNT(Contract) as TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_churn) as Percentage
FROM stg_churn
GROUP BY Contract;

SELECT Customer_Status, 
COUNT(Customer_Status) as TotalCount,
SUM(Total_Revenue) as TotalRevenue,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_churn) * 100.0 as RevenueInPercent
FROM stg_churn
GROUP BY Customer_Status;

SELECT State,
COUNT(State) as TotalCount,
COUNT(State) * 100.0 / (SELECT COUNT(*) FROM stg_churn) as Percentage
FROM stg_churn
GROUP BY State
ORDER BY Percentage DESC;

SELECT DISTINCT(Internet_Type)
FROM stg_churn;