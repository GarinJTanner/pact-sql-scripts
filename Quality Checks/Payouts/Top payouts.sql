select sum(mt.amount) as Payout, mt.user_id, u.flag_status from money_transactions mt, users u 
where u.id=mt.user_id and mt.type="payout" and mt.user_id in (select id from users where flag_status!=0)
group by mt.user_id order by Payout desc limit 50