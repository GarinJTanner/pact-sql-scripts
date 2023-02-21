select user_id, paypal_email, count(*) as count from money_accounts 
where user_id in (select member_id from attendances where id>540000000 and status_code=1 and activity_type_code=201) 
and paypal_verified_status=1 and deleted_at is NULL and paypal_user_id is not null group by paypal_email having count > 1 order by count desc;