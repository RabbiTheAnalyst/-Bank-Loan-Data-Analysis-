--------Problem 01 Statement for Dashboard-------
------FOR GOOD LOAN-------
------FOR GOOD LOAN-------

SELECT * FROM bank_loan_data
SELECT loan_status From bank_loan_data
 
 ---Good Loan Percentages
SELECT 
	(COUNT( CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	/
	COUNT(id) AS Good_Loan_Percentages
FROM bank_loan_data

------Good Loan Applications
SELECT COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) AS Good_loan_Applications
FROM  bank_loan_data

------Good Loan Applications
SELECT COUNT(id)AS Good_loan_Applications From bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

Select * from bank_loan_data

----Good loan funded amount
SELECT SUM(loan_amount)AS Good_loan_Funded_amount From bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

------Good loan Total recieved amount
SELECT SUM(total_payment)AS Good_loan_Total_recieved_amount From bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

----FOR BAD LOAN------
----FOR BAD LOAN------

----Bad loan applications percentages
SELECT 
	(COUNT( CASE WHEN loan_status = 'Charged Off' THEN id END)*100)
	/
	COUNT(id) AS Bad_Loan_Percentages
FROM bank_loan_data

----Bad loan applications
Select COUNT(id) from bank_loan_data
Where loan_status = 'Charged Off'

----Bad loan funded amount
Select SUM(loan_amount) AS Bad_loan_amount from bank_loan_data
Where loan_status = 'Charged Off'

----Bad loan  amount recieved
Select SUM(total_payment) AS Bad_loan_amount_recieved  from bank_loan_data
Where loan_status = 'Charged Off'

-----Grid View------
SELECT
	loan_status,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Recieved_Amount,
	ROUND(AVG(int_rate *100),2) AS Interest_Rate,
	ROUND(AVG(dti *100),2) AS DTI
   FROM 
   bank_loan_data
   GROUP BY
   loan_status

   ---For MTD---
SELECT
	loan_status,
	SUM(loan_amount) AS MTD_Total_Funded_Amount,
	SUM(total_payment) AS MTD_Total_Recieved_Amount
   FROM bank_loan_data
   WHERE MONTH(issue_date) = 12
   GROUP BY
   loan_status

      ---For PMTD---
SELECT
	loan_status,
	SUM(loan_amount) AS PMTD_Total_Funded_Amount,
	SUM(total_payment) AS PMTD_Total_Recieved_Amount
   FROM bank_loan_data
   WHERE MONTH(issue_date) = 11
   GROUP BY
   loan_status