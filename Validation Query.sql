Use loan;
GO
--1 Check the total Number of Records 
Select count(*) as total_Records from 
dbo.[Loan_default];
--2  2. Null / data quality audit across key columns
SELECT
    SUM(CASE WHEN LoanID IS NULL THEN 1 ELSE 0 END) AS Null_LoanID,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Null_Age,
    SUM(CASE WHEN Income IS NULL THEN 1 ELSE 0 END) AS Null_Income,
    SUM(CASE WHEN CreditScore IS NULL THEN 1 ELSE 0 END) AS Null_CreditScore,
    SUM(CASE WHEN [Default] IS NULL THEN 1 ELSE 0 END) AS Null_Default
FROM [dbo].[Loan_default];
--3 Duplicate Loan Id check
Select LoanId, Count(*) from dbo.[Loan_default]
group by LoanID having count(*)>1;
select * from [dbo].[Loan_default];
-- 4.Default rate by year — sanity check against the Power BI dashboard's
SELECT
    YEAR(Loan_Date_DD_MM_YYYY) AS LoanYear,
    COUNT(*) AS TotalLoans,
    SUM(CAST([Default] AS INT)) AS DefaultCount,
    CAST(SUM(CAST([Default] AS INT)) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS DefaultRatePct
FROM [dbo].[Loan_default]
GROUP BY YEAR(Loan_Date_DD_MM_YYYY)
ORDER BY LoanYear;
GO