set @user_id=16721728;
set @paypal_email="XXXXXXXXX";
set @fullcheck=1;
set @checkin_id=(select id from attendances where id>@ayear and member_id=@user_id and status_code=1 and checkin_latitude is not null and checkin_longitude is not null order by id desc limit 1);set @checkin_latitudeBL=(select checkin_latitude -0.01 from attendances where id=@checkin_id);set @checkin_longitudeBL=(select checkin_longitude -0.01 from attendances where id=@checkin_id);set @checkin_latitudeTR=(select checkin_latitude +0.01 from attendances where id=@checkin_id);set @checkin_longitudeTR=(select checkin_longitude +0.01 from attendances where id=@checkin_id);


select (


select login from users where id=@user_id) as login, (
select email from users where id=@user_id) as email, (

select phone_model from devices where id in (select device_id from users_devices where user_id=@user_id) order by updated_at desc limit 1) 
as phone_model, (


case when @fullcheck=1 then (select phone_model from devices where id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%American Megatrends Inc%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Android Combo%" or  id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Android SDK%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%best buy%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Bignox%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%BlueStacks%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Changed%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%chromium%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%custom phone%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Eblu.Berry%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%emu%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Genymotion%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%iPhone Simulator%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Meitu%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Microsoft Windows 10%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Microvirt%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Parallels%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%Rockchip Android TV%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%SDK%" or id in (select device_id from users_devices where user_id=@user_id) and phone_model like "%VMware%")
else null end) as emu_name, (

select flag_status from users where id=@user_id) as flag_status, (


select sum(balance) from money_accounts where user_id=@user_id) as balance, (
select sum(amount) from money_transactions where user_id=@user_id and type="payout") as payouts,  (
select sum(amount) from money_transactions where user_id=@user_id and type="payment") as payments,  (
select sum(amount) from money_transactions where user_id=@user_id and type="refund") as refunds,  (
select sum(amount) from money_transactions where user_id=@user_id and type="rewardadjustment") as admin_adjustment, (


-- tickets
select count(distinct zd_ticket_id) from bugs where user_id in (select id from users where email like concat((select email from users where id=@user_id),'%'))) as tickets, (

-- adds
select count(id) from attendances where member_id=@user_id and source="support team" and status_code=1 or member_id=@user_id and status_code=31) as adds, (

-- skips
select count(id) from pacts where user_id=@user_id and processing_status=22) as skips, (

-- activities
select count(id) from attendances where status_code=1 and member_id=@user_id) as activities, (


-- FLAGS
case when (
select count(id) from attendances 
		where id>@ayear and member_id=@user_id and
        checkin_latitude = checkout_latitude and checkin_longitude = checkout_longitude and 
        checkin_latitude is not NULL and checkin_longitude is not NULL 
        and activity_type_code = 1 and status_code=1)>75 or (
   
select count(id) from attendances 
		where member_id=@user_id and id>@ayear and status_code=1 and activity_type_code = 1 and 
		checkin_latitude is not NULL and checkin_longitude is not NULL and checkout_latitude is not NULL and checkout_longitude is not NULL 
		group by checkin_latitude, checkin_longitude order by count(id) desc limit 1)>75 or (

select count(id) from attendances 
		where member_id=@user_id and id>@ayear and status_code=1 and activity_type_code = 1 and  
		checkout_latitude is not NULL and checkout_longitude is not NULL and checkout_latitude is not NULL and checkout_longitude is not NULL 
		group by checkout_latitude, checkout_longitude order by count(id) desc limit 1)>75 

	then 'WARNING: Potential Fake GPS'

when (
select count(*) from attendances 
		where activity_type_code=51 and member_id=@user_id and id>@ayear and value1 is not null and value2 is not null group by member_id, value1, value2 order by count(*) desc limit 1)>50

	then 'WARNING: dupe_steptracker'
    
when (
select count(id) from attendances 
	where member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=10000 and value1<=15000 and value2<=18 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=15000 and value1<=20000 and value2<=37 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=20000 and value1<=30000 and value2<=50 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=30000 and value1<=40000 and value2<=75 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=40000 and value1<=50000 and value2<=100 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=50000 and value1<=60000 and value2<=125 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=60000 and value1<=70000 and value2<=150)>2 
   
	then 'EXPLOIT: Impossible Jawbone'

when (
select count(member_id) from attendances 
where member_id=@user_id and created_at< DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code in 
('2','3','4','5','6','7','8','9','10','11','12','13','14','15'))>10
      
	then 'EXPLOIT: MMFRK_Ahead'

when (
select count(id) from attendances 
where created_at>@ayear and member_id=@user_id and value1 is not null and value2 is not null and value2 in 

('2','3','4','5','6','7','8','9','10','11','12','13','14','15')
		group by value1, value2 order by count(id) desc limit 1)>50 
   
   then 'WARNING: MMFRK_dupe'
    
when (
select count(*) from attendances 
 where member_id=@user_id and value2>300 and activity_type_code in
('2','3','4','5','6','7','8','9','10','11','12','13','14','15')>10
 )

	then 'EXPLOIT: MMFRK_imp'
    
when (
select flag_status from users where id=@user_id)>=64 and (select user_id from bugs where zd_user_issue="chargeback_warning" and user_id=@user_id) is not null
	
    then concat('Chargeback Offender: #', (select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="chargeback_warning" order by created_at desc limit 1),' Warning Issued: ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="chargeback_warning" order by created_at asc limit 1))

	else NULL end) as permabans, (
    
    
case when (select flag_status from users where id=@user_id)>=64 and (select user_id from bugs where zd_user_issue="chargeback_warning" and user_id=@user_id) is not null
	
    then concat('Chargeback Offender: #', (select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="chargeback_warning" order by created_at desc limit 1),' Warning Issued: ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="chargeback_warning" order by created_at asc limit 1))

    
when (select flag_status from users where id=@user_id)>=64 and (select user_id from bugs where zd_user_issue="chargeback_warning" and user_id=@user_id) is null
	
    then 'Check for multiple accounts and issue warning'
    
    else null end) as Chargeback, (
    
    
-- GYM PACT
select case when (         
select count(user_id) from gyms where created_at>(select created_at from bugs where user_id=@user_id and zd_user_issue="gym_pact_warning" order by created_at asc limit 1) and verified=0 and checked=1 and user_id=@user_id and user_id in (select user_id from bugs where zd_user_issue="gym_pact_warning"))>20

then concat('#',(select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="gym_pact_warning" order by created_at asc limit 1), ': Warning Issued ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="gym_pact_warning" order by created_at asc limit 1))
when (
select count(user_id) from gyms where verified=0 and checked=1 and user_id=@user_id)>50

	then 'Check for multiple accounts and issue warning'

	else null end) as 'Gym Pact', (


-- FOOD PACT
case when (  
select distinct(count(value2)) as cnt from attendances where id>@ayear and activity_type_code=101 and status_code=1 and member_id=@user_id and member_id in (select user_id from bugs where zd_user_issue="food_pact_warning")
	group by value2 order by cnt desc limit 1)>200 
    
    then concat('#',(select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at desc limit 1), ': Warning Issued ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at asc limit 1)) 
    
when (
select distinct(count(value2)) as cnt from attendances where id>@ayear and activity_type_code=101 and status_code=1 and member_id=@user_id and member_id not in (select user_id from bugs where zd_user_issue="food_pact_warning")
	group by value2 order by cnt desc limit 1)>200 
    
    then 'DUPE: Check for multiple accounts and issue warning' 
    
when (
-- MFP_ahead
select count(member_id) from attendances where member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -10 DAY) and member_id in (select user_id from bugs where zd_user_issue="food_pact_warning"))>30 

	then concat((select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at desc limit 1), ': Warning Issued ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at asc limit 1))

when (
select count(member_id) from attendances where member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -10 DAY) and member_id not in (select user_id from bugs where zd_user_issue="food_pact_warning"))>30 

	then 'AHEAD: Check for multiple accounts and issue warning' 
    
when (
-- imp_MFP
select count(id) from attendances where member_id=@user_id and value2>35000 and activity_type_code=101 and status_code=1 and member_id in (select user_id from bugs where zd_user_issue="food_pact_warning"))>1

	then concat('#',(select zd_ticket_id from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at desc limit 1), ': Warning Issued ', (select left(created_at, 10) from bugs where user_id=@user_id and zd_user_issue="food_pact_warning" order by created_at asc limit 1))

when (
select count(id) from attendances where member_id=@user_id and value2>35000 and activity_type_code=101 and status_code=1 and member_id not in (select user_id from bugs where zd_user_issue="food_pact_warning"))>1

	then 'IMP: Check for multiple accounts and issue warning' 
    
 else null end) as 'Food Pact', (


-- VEGGIE PACT
case when (
select count(v.voteable_id) from votes v, attendances a
where a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%fake%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%screen%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%xploit%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%flag%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%cheat%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%report%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%internet%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%image%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%google%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%magazine%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%plastic%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%stock%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%pic%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%photo%'  
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%picture%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%photo%' 
   )>=1 

       
	then 'Veggie Pact Flags' 
       
when (
select count(*) from attendances where id>@ayear and member_id=@user_id and status_code=61 and activity_type_code=201)>30 

	then 'Rejected Photos' 

when (
select count(id) from votes where user_id=@user_id and opinion=0 and voteable_id in (select id from attendances))>(select count(id) from votes where opinion=1 and user_id=@user_id) and (select count(id) from votes where user_id=@user_id and opinion=0 and voteable_id in (select id from attendances))>100

	then 'Malicious Downvoter'

else null end) as 'Veggie Pact', (


select case when (
select count(*) from users where email like concat((select email from users where id=@user_id),'%'))>1 then (select count(*) from users where email like concat((select email from users where id=@user_id),'%') and is_deleted=1) 
else null end) as 'account remade?' , (

-- cc_count
select count(distinct user_id) from money_accounts where deleted_at is null and cc_fingerprint in (select cc_fingerprint from money_accounts where user_id=@user_id and cc_fingerprint is not null)) as cc_count, (

-- current_ip_count
select count(current_login_ip) from users where current_login_ip in (select current_login_ip from users where id=@user_id) and id in (select user_id from pacts where program_type=1)) as current_ip_count, (

-- last_ip_count
select count(last_login_ip) from users where last_login_ip in (select last_login_ip from users where id=@user_id) and id in (select user_id from pacts where program_type=1)) as last_ip_count, (

-- paypal_email
select count(paypal_email) from money_accounts 
where type = 'WithdrawAccount' and paypal_email in (select paypal_email from money_accounts where user_id=@user_id)
   or type = 'WithdrawAccount' and paypal_email in (select paypal_email from money_accounts where paypal_email=@paypal_email)
   or type = 'WithdrawAccount' and paypal_email in (select email from users where id=@user_id)) as paypal_email, (
   
-- paypal_name
select count(paypal_name) from money_accounts 

where type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where active=1 and user_id=@user_id)
   or type = 'WithdrawAccount' and paypal_name in (select paypal_name from money_accounts where paypal_email=@paypal_email)) as paypal_name, (

-- name_count
case when @fullcheck=1 then (
select count(*) as cnt from users where login in (select login from users where id=@user_id) 
and id in (select user_id from pacts where program_type=1) group by login) 
else null end)
 as name_count, (

-- GPS_count
case when @fullcheck=1 
then (
select count(distinct member_id) from attendances
where id>@amonth and
checkin_latitude>@checkin_latitudeBL
and checkin_longitude>@checkin_longitudeBL
and checkin_latitude<@checkin_latitudeTR
and checkin_longitude<@checkin_longitudeTR)
else null end)

    
    as GPS_count, (


-- total_workouts
select count(id) from attendances 
where id>@ayear and member_id=@user_id and status_code=1 and activity_type_code in ('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','51','61') and source!="support team") as total_workouts, (

   -- steptracker
select count(*) from attendances 
where activity_type_code=51 and member_id=@user_id and id>@ayear and value1 is not null and value2 is not null group by member_id, value1, value2 order by count(*) desc limit 1) as dupe_steptracker, (

-- Jawbone
select count(id) from attendances 
where member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=10000 and value1<=15000 and value2<=18
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=15000 and value1<=20000 and value2<=37
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=20000 and value1<=30000 and value2<=50
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=30000 and value1<=40000 and value2<=75
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=40000 and value1<=50000 and value2<=100
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=50000 and value1<=60000 and value2<=125
   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=60000 and value1<=70000 and value2<=150) as 'Jawbone_imp', (

-- MMFRK_ahead
select count(member_id) from attendances 
where member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code in 
('2','3','4','5','6','7','8','9','10','11','12','13','14','15')) as MMFRK_ahead, (

-- MMFRK_dupe
select count(id) from attendances 
where id>@ayear and member_id=@user_id and value1 is not null and value2 is not null and status_code=1 and activity_type_code in
('2','3','4','5','6','7','8','9','10','11','12','13','14','15') 

   group by value1, value2 order by count(id) desc limit 1) as MMFRK_dupe, (

-- MMFRK_imp
select count(*) from attendances 
 where id>@ayear and member_id=@user_id and value2>300 and activity_type_code in
 ('2','3','4','5','6','7','8','9','10','11','12','13','14','15') 
group by member_id having count(*)>10) as MMFRK_imp, (

-- checkout_accuracy
select checkout_accuracy from attendances where member_id=@user_id and activity_type_code=1 and status_code=1 and id>@id
group by checkout_accuracy having count(*)>1  order by count(*) desc limit 1) as checkout_accuracy, (

-- fake_GPS
select count(id) from attendances 
        where id>@ayear and member_id=@user_id and 
        checkin_latitude = checkout_latitude and checkin_longitude = checkout_longitude and 
        checkin_latitude is not NULL and checkin_longitude is not NULL
        and activity_type_code = 1 and status_code=1) as fake_GPS, (
   
-- fake_GPS2
select count(id) from attendances 
where member_id=@user_id and id>@ayear and status_code=1 and activity_type_code = 1 and
checkin_latitude is not NULL and checkin_longitude is not NULL and checkout_latitude is not NULL and checkout_longitude is not NULL 
group by checkin_latitude, checkin_longitude order by count(id) desc limit 1) as fake_GPS2, (

-- fake_GPS3
select count(id) from attendances 
where member_id=@user_id and id>@ayear and status_code=1 and activity_type_code = 1 and
checkout_latitude is not NULL and checkout_longitude is not NULL and checkout_latitude is not NULL and checkout_longitude is not NULL 
group by checkout_latitude, checkout_longitude order by count(id) desc limit 1) as fake_GPS3, (
         
-- gym_name
select name from gyms where id in (select gym_id from attendances 
where id>@ayear and member_id=@user_id and status_code=1 and 
checkin_latitude = checkout_latitude and checkin_longitude = checkout_longitude and checkin_latitude is not NULL and checkin_longitude is not NULL
and activity_type_code = 1 and status_code=1 group by member_id having count(gym_id) > 1  order by count(gym_id) asc)) as gym_name, (

-- gym_date
select created_at from attendances 
where id>@ayear and member_id=@user_id and status_code=1 and 
checkin_latitude = checkout_latitude and checkin_longitude = checkout_longitude and checkin_latitude is not NULL and checkin_longitude is not NULL
and activity_type_code = 1 and status_code=1 group by member_id order by created_at asc) as gym_date, (

-- rejected_gyms
select count(user_id) from gyms where verified=0 and checked=1 and user_id=@user_id) as rejected_gyms, (

-- MFP_total
select count(id) from attendances where id>@ayear and status_code=1 and activity_type_code=101 and member_id=@user_id) as total_MFP, (

-- MFP_ahead
select count(member_id) from attendances where member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -10 DAY)) as 'MFP_logged_ahead>10', (

-- MFP_dupe
select distinct(count(value2)) as cnt from attendances where id>@ayear and activity_type_code=101 and status_code=1 and member_id=@user_id
	group by value2 order by cnt desc limit 1) as dupe_MFP, (       

-- MFP_imp
select count(id) from attendances where member_id=@user_id and value2>35000 and activity_type_code=101 and status_code=1) as imp_MFP, (

-- total_photos
select count(id) from attendances where id>@ayear and member_id=@user_id and activity_type_code=201 and status_code!=63) as total_photos, (

-- accepted_photos
select count(member_id) from attendances where id>@ayear and member_id=@user_id and status_code=1 and activity_type_code=201) as accepted_photos, (

-- rejected_photos
select count(member_id) from attendances where id>@ayear and member_id=@user_id and status_code=61 and activity_type_code=201) as rejected_photos, (

-- veggie_pact_flags
select count(v.voteable_id) from votes v, attendances a
where a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%fake%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%screen%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%xploit%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%flag%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%cheat%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%report%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%internet%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%image%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%google%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%magazine%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%plastic%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%stock%'
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%pic%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%photo%'  
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%photo%picture%' 
   or a.id>@ayear and a.member_id=@user_id and a.id=v.voteable_id and v.message not like "%dup%" and v.message not like "%similar%" and v.message not like "%same%" and v.message not like "%pickle%" and v.message not like "%double%" and v.message not like "%vegetable%" and v.message not like "%repeat%" and v.message like '%pic%photo%' 
   
   ) as veggie_pact_flags, (
   
-- total_downvotes
select sum(CASE WHEN opinion=0 then 1 else 0 end) from votes where user_id=@user_id) as total_downvotes, (

-- failed_downvotes
select count(id) from votes where user_id=@user_id and opinion=0 and voteable_id in (select id from attendances where status_code=1)) as failed_downvotes, (

-- upvotes
select sum(CASE WHEN opinion=1 then 1 else 0 end) from votes where user_id=@user_id) as upvotes, (

-- excessive_voting_day
select count(*) from votes where id>=@vmonth and user_id=@user_id group by user_id, left(created_at, 14) having count(*)>1 order by count(*) desc limit 1) as best_hour