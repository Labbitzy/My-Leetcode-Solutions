# Write your MySQL query statement below
select invoice_id, customer_name, price, ifnull(sum(co.user_id = c.customer_id),0) as contacts_cnt, ifnull(sum(contact_email in (select email from Customers)),0) as trusted_contacts_cnt
from Invoices i
left join Customers c
on i.user_id = c.customer_id
left join Contacts co
on c.customer_id = co.user_id
group by invoice_id
order by invoice_id;