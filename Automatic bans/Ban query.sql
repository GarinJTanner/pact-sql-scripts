select id, email, updated_at from users where id in (

-- emulators
select ud.user_id from users_devices ud, devices d where 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%American Megatrends Inc%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Android Combo%" or  
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Android SDK%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%best buy%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Bignox%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%BlueStacks%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Changed%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%chromium%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%custom phone%" or
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Eblu.Berry%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%emu%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Genymotion%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%iPhone Simulator%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Meitu%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Microsoft Windows 10%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Microvirt%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Parallels%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%Rockchip Android TV%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%SDK%" or 
ud.device_id=d.id and ud.user_id in (select member_id from attendances where status_code=1 and id>=@ayear) and ud.user_id in (select id from users where  flag_status=0 and is_deleted=0) and d.phone_model like "%VMware%")

or id in (

-- excessive_count_of_rejected_gyms
select user_id from gyms 
where user_id in (select id from users where flag_status=0 and is_deleted=0) and user_id not in (select user_id from bugs where zd_user_issue="gym_pact_warning") and id>=@gmonth and verified=0 and checked=1 
group by user_id having count(id)>20) 

or id in (

-- excessive_count_of_rejected_gyms-ALREADY WARNED
select g.user_id from bugs b, gyms g, users u
where g.id>=@gmonth and u.flag_status=0 and u.is_deleted=0 and g.created_at>b.created_at and g.verified=0 and g.checked=1 and b.zd_user_issue="gym_pact_warning" and 
u.id=b.user_id and u.id=g.user_id
group by g.user_id having count(g.id)>20) 

or id in (

-- MMFRK_ahead
select member_id from attendances 
 where id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and created_at<DATE_ADD(enter, INTERVAL - 2 DAY) and activity_type_code in ('2','3','4','5','6','7','8','9','10','11','12','13','14','15') 
group by member_id having count(*)>2) 

or id in (

-- MMFRK_dupe
select member_id from attendances 
where id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and value1 is not null and value2 is not null and status_code=1 and activity_type_code in ('2','3','4','5','6','7','8','9','10','11','12','13','14','15') 
    
group by member_id, value1, value2 having count(*)>28) 

or id in (

-- MMFRK_imp
select member_id from attendances 
 where member_id in (select id from users where flag_status=0 and is_deleted=0) and id>=@amonth and value2>300 and activity_type_code in('2','3','4','5','6','7','8','9','10','11','12','13','14','15')
 group by member_id having count(*)>2)

or id in (

-- Jawbone
select member_id from attendances 
where id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=10000 and value1<=15000 and value2<=25
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=15000 and value1<=20000 and value2<=37
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=20000 and value1<=30000 and value2<=50
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=30000 and value1<=40000 and value2<=75
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=40000 and value1<=50000 and value2<=100
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=50000 and value1<=60000 and value2<=125
   or id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and activity_type_code=51 and status_code=1 and value1>=60000 and value1<=70000 and value2<=150
group by member_id having count(*)>2) 

or id in (

-- steptracker_dupes
select member_id from attendances 
where member_id in (select id from users where flag_status=0 and is_deleted=0) and id>=@amonth and activity_type_code=51 and status_code=1
group by member_id, value1, value2 having count(*)>28) 

or id in (

-- MFP_ahead
select member_id from attendances 
where member_id in (select id from users where flag_status=0 and is_deleted=0) and member_id not in (select user_id from bugs where zd_user_issue="food_pact_warning") and id>=@amonth and created_at<DATE_ADD(enter, interval -10 DAY) and activity_type_code=101 and status_code=1
group by member_id having count(id)>20)



or id in (

-- MFP_imp
select member_id from attendances where member_id in (select id from users where flag_status=0 and is_deleted=0) and id>=@amonth and member_id in (select id from users where flag_status=0 and is_deleted=0) and member_id not in (select user_id from bugs where zd_user_issue="food_pact_warning") and value2>35000 and activity_type_code=101 and status_code=1
group by member_id having count(*)>10)

or id in (

-- Votes
select user_id from votes where user_id in (select id from users where flag_status=0 and is_deleted=0) and id>=@vmonth group by user_id, left(created_at, 10) having count(*)>9000)