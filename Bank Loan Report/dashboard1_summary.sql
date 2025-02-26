-- DASHBOARD 1: SUMMARY

select * from bank_loan;

-- KPIs SUMMARY
-- Total Loan Applications 
select count(id) as total_loan_applications from bank_loan;

select
    month_num,
    total_loan_applications,
    lag(total_loan_applications) over (order by month_num) as prev_month_applications,
    round(
        (total_loan_applications - lag(total_loan_applications) over (order by month_num)) / 
        lag(total_loan_applications) over (order by month_num) * 100, 
        2
    ) as percentage_change
from (
    select 
        month(str_to_date(issue_date, '%d-%m-%Y')) as month_num,
        count(id) as total_loan_applications
    from bank_loan
    group by month_num
) subquery
order by month_num;

-- Total Funded Amount
select sum(loan_amount) as total_funded_amount from bank_loan;

select
	month_num,
    total_funded_amount,
    lag(total_funded_amount) over (order by month_num) as prev_month_funded,
    round(
		(total_funded_amount - lag(total_funded_amount) over (order by month_num))/lag(total_funded_amount) over (order by month_num) * 100, 2 ) as percentage_change
from (
	select
		month(str_to_date(issue_date, '%d-%m-%Y')) as month_num,
		sum(loan_amount) as total_funded_amount
	from bank_loan
	group by 1
) subquery
order by month_num;

-- Total Amount Received
select sum(total_payment) as total_amount_received from bank_loan;

select
	month_num,
    total_received_amount,
    lag(total_received_amount) over (order by month_num) as prev_month_received,
    round(
		(total_received_amount - lag(total_received_amount) over (order by month_num))/lag(total_received_amount) over (order by month_num) * 100, 2 ) as percentage_change
from (
	select
		month(str_to_date(issue_date, '%d-%m-%Y')) as month_num,
		sum(total_payment) as total_received_amount
	from bank_loan
	group by 1
) subquery
order by month_num;

-- Average Interest Rate
select round(avg(int_rate) * 100,2) as average_interest_rate from bank_loan;

select month(str_to_date(issue_date, '%d-%m-%Y')) as month, round(avg(int_rate) * 100,2) as average_interest_rate
from bank_loan
group by 1
order by 1;

-- Average Debt-to-Income Ratio (DTI)
select round(avg(dti)*100, 2) as average_dti from bank_loan;

select month(str_to_date(issue_date, '%d-%m-%Y')) as month, round(avg(dti)*100, 2) as average_dti
from bank_loan
group by 1
order by 1;

-- GOOD LOAN VS BAD LOAN
-- Good Loan Applications Percentage
select
	round((count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)) / count(id) * 100, 2) as good_loan_percentage 
from bank_loan;

-- Good Loan Applications
select count(id) as good_loan_applications from bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

-- Good Loan Funded Amount
select sum(loan_amount) as good_loan_funded_amount from bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

-- Good Loan Received Amount
select sum(total_payment) as good_loan_receuved_amount from bank_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

-- Bad Loan Applications Percentage
select
	round((count(case when loan_status = 'Charged Off' then id end)) / count(id) * 100, 2) as bad_loan_percentage 
from bank_loan;

-- Bad Loan Applications
select count(id) as bad_loan_applications from bank_loan
where loan_status = 'Charged Off';

-- Bad Loan Funded Amount
select sum(loan_amount) as bad_loan_funded_amount from bank_loan
where loan_status = 'Charged Off';

-- Bad Loan Received Amount
select sum(total_payment) as bad_loan_receuved_amount from bank_loan
where loan_status = 'Charged Off';

-- LOAN STATUS GRID VIEW
select
	loan_status,
    count(id) as loan_count,
    sum(loan_amount) as loan_funded_amount,
    sum(total_payment) as loan_received_amount,
    round(100 * avg(int_rate), 2) as avg_int_rate,
    round(100 * avg(dti), 2) as avg_dti
from bank_loan
group by 1;