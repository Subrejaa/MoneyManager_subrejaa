use Subrejaa_DB

create table mm_expense(id int,Category_Name varchar(100),Amount int,Account_Type varchar(50),Currency_Type varchar(10),Created_Date date,Modified_Date date)

select * from mm_expense

alter table mm_expense alter column Amount varchar(20)
