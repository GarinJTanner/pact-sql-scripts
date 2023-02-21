select a.created_at, a.photo_url, u.current_login_ip, ma.paypal_email from users u, money_accounts ma, attendances a

where u.id=a.member_id and u.id=ma.user_id and ma.paypal_email in (select user_id from money_accounts where active=1 and paypal_verified_status=1) 
and u.flag_status!=0
 or u.id=a.member_id and u.id=ma.user_id and u.flag_status!=0

or u.id=a.member_id and u.id=ma.user_id and ma.paypal_email in (select user_id from money_accounts where active=1 and paypal_verified_status=1)  
and u.id=a.member_id and u.id=ma.user_id and u.flag_status=0 and u.id in (select member_id from attendances where activity_type_code=201 and enter>DATE_ADD(current_timestamp(), INTERVAL -1 MONTH)) and u.is_deleted=0 and u.id in (select user_id from pacts where program_type=1)
 or u.id=a.member_id and u.id=ma.user_id and u.flag_status=0 and u.id in (select member_id from attendances where activity_type_code=201 and status_code=1 and enter>DATE_ADD(current_timestamp(), INTERVAL -1 MONTH)) and u.is_deleted=0 and u.id in (select user_id from pacts where program_type=1)
 
 group by current_login_ip having count(*)>1