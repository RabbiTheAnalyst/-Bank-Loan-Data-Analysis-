---- As Usual Primary problem solving Technique



SELECT * FROM bank_loan_data

---Total Loan Applications
SELECT COUNT(id) AS Total_Loan_Applications FROM bank_loan_data

----Month to date Total Applications
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

---Previos Mount to Date Total Applications
SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

----Total Funded Amount
Select SUM(loan_amount) AS MTD_Total_Funded_Loan_Amount FROM bank_loan_data
Where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

----Previous Total Funded Loan Amount
Select SUM(loan_amount) AS PMTD_Total_Funded_Loan_Amount FROM bank_loan_data
Where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

---Total Amount Received
Select SUM(total_payment) AS MTD_Total_Amount_Recieved FROM bank_loan_data
Where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

----Previous Total Amount Recieved
Select SUM(total_payment) AS PMTD_Total_Amount_Recieved FROM bank_loan_data
Where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

----Avarage Interest Rate
Select ROUND(AVG(int_rate),4)*100 AS Avg_Interest_Rate FROM bank_loan_data

----Month to Date Avarage Interest Rate
Select ROUND(AVG(int_rate),4)*100 AS MTD_Avg_Interest_Rate FROM bank_loan_data
Where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

----Previous Month to Date Avarage Interest Rate
Select ROUND(AVG(int_rate),4)*100 AS PMTD_Avg_Interest_Rate FROM bank_loan_data
Where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

---Avarage Mounth to Date DTI
Select ROUND(AVG(dti),4)*100 AS MTD_Avg_DTI FROM bank_loan_data
Where MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

---Previous Avarage Mounth to Date DTI
Select ROUND(AVG(dti),4)*100 AS MTD_Avg_DTI FROM bank_loan_data
Where MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021



