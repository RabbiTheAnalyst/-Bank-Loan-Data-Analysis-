-----CREATE DASHBOARD USING POWER BI----
-----CREATE DASHBOARD USING POWER BI----
-----CREATE DASHBOARD USING POWER BI----

SELECT * FROM bank_loan_data
----------
----------Monthly Trends by Issue Date ---------
----------Monthly Trends by Issue Date ---------

SELECT 
	DATENAME(MONTH, issue_date) AS Month_Name,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

-------Regional Analysis by State -----------
-------Regional Analysis by State -----------
SELECT 
	address_state,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC

---------Loan Term Analysis-------
---------Loan Term Analysis-------
SELECT 
	term,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term 

----------Employee Length Analysis-------------
----------Employee Length Analysis-------------
select * from bank_loan_data

SELECT 
	emp_length,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) DESC

--------Loan Purpose Breakdown---------
--------Loan Purpose Breakdown---------
select * from bank_loan_data
SELECT 
	purpose,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC

--------Home Ownership Analysis---------
--------Home Ownership Analysis---------
select * from bank_loan_data
SELECT 
	home_ownership,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC

-----Grid View------
------Where Grade = "A"---------
SELECT 
	home_ownership,
	COUNT(id) AS Total_loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount
FROM bank_loan_data
WHERE grade = 'A' AND address_state = 'CA'
GROUP BY home_ownership
ORDER BY COUNT(id) DESC



