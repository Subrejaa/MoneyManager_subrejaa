use Subrejaa_DB

create table mm_expense(id int,Category_Name varchar(100),Amount int,Account_Type varchar(50),Currency_Type varchar(10),Created_Date date,Modified_Date date)

select * from mm_expense

alter table mm_expense alter column Amount varchar(20)

--STORED PROCEDURES

create procedure ins_sp
@id int,
@cat_name varchar(100),
@amt varchar(50),
@acc_type varchar(50),
@currency_type varchar(10)
with encryption
as begin
insert into mm_expense values(@id,@cat_name,@amt,@acc_type,@currency_type,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)
end
exec ins_sp 51,'Health','$10.30','Bank','USD'

--LIST PROCEDURE
create procedure read_sp
with encryption
as 
begin
select * from mm_expense
end
exec read_sp

--VIEW PROCEDURE
create procedure view_sp
@id int
with encryption
as 
begin
select * from mm_expense where id=@id
end

exec view_sp 51

--UPDATE PROCEDURE
create procedure update_sp
@amt varchar(20),
@id int
with encryption
as begin
update mm_expense set Amount=@amt where id=@id
end
 exec update_sp '$15',51

 --DELETE PROCEDURE
 create procedure delete_sp
 @id int
 with encryption
 as begin
 delete from mm_expense where id=@id
 end
 exec delete_sp 51