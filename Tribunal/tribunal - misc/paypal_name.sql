select id, flag_status, login, email, created_at from users where id in (select distinct user_id from money_accounts 

where type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where active=1 and user_id=@user_id)
   or type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where paypal_email=@paypal_email))