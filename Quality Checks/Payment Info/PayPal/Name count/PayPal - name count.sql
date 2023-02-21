select user_id, paypal_name, count(*) as count from money_accounts 
where user_id in (select member_id from attendances where id>535072803 and status_code=1)
and paypal_verified_status=1 and type = 'WithdrawAccount' group by paypal_name having count > 1 order by count desc;