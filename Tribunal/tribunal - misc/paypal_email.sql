select distinct u.id, u.login, u.email, u.flag_status from users u, money_accounts ma 
where u.id=ma.user_id and ma.paypal_email in (@paypal_email)
   or u.id=ma.user_id and ma.paypal_email in (select email from users where id=@user_id)
   or u.id=ma.user_id and ma.paypal_email in (select paypal_email from money_accounts where user_id=@user_id)