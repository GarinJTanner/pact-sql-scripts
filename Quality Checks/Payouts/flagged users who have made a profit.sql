select ma.user_id, ma1.balance, mt3.payouts, mt1.payments, mt2.refunds
from money_accounts ma


join (
select user_id, sum(balance) as balance 
from money_accounts where user_id in (select id from users where flag_status!=0)
group by user_id) ma1
on ma.user_id=ma1.user_id
left join (
select user_id, sum(amount) as payments 
from money_transactions 
where type="payment" and user_id in (select id from users where flag_status!=0)
group by user_id) mt1
on ma.user_id=mt1.user_id
left join (
select user_id, sum(amount) as refunds 
from money_transactions 
where type="refund" and user_id in (select id from users where flag_status!=0)
group by user_id) mt2
on ma.user_id=mt2.user_id
left join (
select user_id, sum(amount) as payouts 
from money_transactions 
where type="payout" and user_id in (select id from users where flag_status!=0)
group by user_id) mt3

on ma.user_id=mt3.user_id

group by ma.user_id having mt1.payments - mt2.refunds < mt3.payouts 