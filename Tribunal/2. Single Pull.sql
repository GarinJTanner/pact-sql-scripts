set @user_id=XXXXXXXXXXXX;
set @paypal_email="XXXXXXXXXXXX";
set @program_type=1;
set @veggie_pact=0;
set @offset=0.0025;
set @checkin_id=(select id from attendances where id>@amonth and member_id=@user_id and status_code=1 and checkin_latitude is not null and checkin_longitude is not null order by id asc limit 1);
set @checkin_latitudeBL=(select checkin_latitude -@offset from attendances where id=@checkin_id);
set @checkin_longitudeBL=(select checkin_longitude -@offset from attendances where id=@checkin_id);
set @checkin_latitudeTR=(select checkin_latitude +@offset from attendances where id=@checkin_id);
set @checkin_longitudeTR=(select checkin_longitude +@offset from attendances where id=@checkin_id);


select id, flag_status, email, login, created_at, current_login_ip from users where id in (

-- flag_32
select user_id from users_devices where device_id in (select device_id from users_devices where user_id in (select id from users where id=@user_id)))


or id in (

-- cc_count
select user_id from money_accounts where deleted_at is null and cc_fingerprint in (select cc_fingerprint from money_accounts where user_id=@user_id and cc_fingerprint is not null)) and  
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end 
        
or id in (

-- current_ip_count
select id from users where current_login_ip in (select current_login_ip from users where id=@user_id) and id in (select user_id from pacts where program_type=@program_type)) and
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end 
        
or id in (

-- last_ip_count
select id from users where last_login_ip in (select last_login_ip from users where id=@user_id) and id in (select user_id from pacts where program_type=@program_type)) and
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end 

or id in (

-- name_count
select case when "% %" in (select login from users where id=@user_id) then (select id from users where login in (select login from users where id=@user_id) and id in (select user_id from pacts where program_type=@program_type)) else null end) and
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end

or id in (

-- paypal_email
select user_id from money_accounts 
where type = 'WithdrawAccount' and paypal_email in (select paypal_email from money_accounts where user_id=@user_id)
   or type = 'WithdrawAccount' and paypal_email in (select paypal_email from money_accounts where paypal_email=@paypal_email)
   or type = 'WithdrawAccount' and paypal_email in (select email from users where id=@user_id)) and
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end 
        
or id in (
   
-- paypal_name
select user_id from money_accounts 

where type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where active=1 and user_id=@user_id)
   or type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where paypal_email=@paypal_email)) and
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end 
   
   or id in (

-- GPS_count
select member_id from attendances
where id>@amonth and
checkin_latitude>@checkin_latitudeBL
and checkin_longitude>@checkin_longitudeBL
and checkin_latitude<@checkin_latitudeTR
and checkin_longitude<@checkin_longitudeTR) and 
        
        case when @veggie_pact=1 then id in (select member_id from attendances where activity_type_code=201 and id>=@amonth) 
        
			 when @veggie_pact=0 then id in (select member_id from attendances where id>=@amonth)
        
        else null end