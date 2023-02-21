select d.phone_model from devices d, users_devices ud, users u where d.id=ud.device_id and ud.user_id=u.id and u.email in (select email from users where id in (select distinct(user_id) from pacts where 
   
   days_attended=0 and processed=0 and pact_type=2 and program_type=1 and processing_status is null and end_date="2016-12-04" and user_id in (select user_id from money_accounts where flagged=0 and deleted_at is null and type!="PactBucksAccount")

or days_attended=0 and processed=0 and pact_type=3 and program_type=1 and processing_status is null and end_date="2016-12-04" and user_id in (select user_id from money_accounts where flagged=0 and deleted_at is null and type!="PactBucksAccount")))