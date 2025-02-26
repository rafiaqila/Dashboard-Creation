-- DASHBOARD 2: OVERVIEW

select * from bank_loan;

-- Monthly Trends by Issue Date
select
	month(str_to_date(issue_date, '%d-%m-%Y')) as month_num,
	monthname(str_to_date(issue_date, '%d-%m-%Y')) as month_name,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1,2
order by 1;

-- Regional Analysis by State
select
	address_state,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1
order by 2 desc;

-- Long Term Analysis
select
	term,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1
order by 1;

-- Employee Length Analysis
select
	emp_length,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1
order by 2 desc;

-- Loan Purpose Breakdown
select
	purpose,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1
order by 2 desc;

-- Home Ownership Analysis
select
	home_ownership,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from bank_loan
group by 1
order by 2 desc;