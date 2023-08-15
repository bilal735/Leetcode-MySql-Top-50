# Write your MySQL query statement below
select ('High Salary') category,count(income) as accounts_count from Accounts where(income>50000)
union
select ('Low Salary') category,count(income) as accounts_count from Accounts where(income<20000)
union 
select ('Average Salary') category,count(income) as accounts_count from Accounts where(income>=20000 and income<=50000)
