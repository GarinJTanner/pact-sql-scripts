select u1.id, u1.current_login_ip, u4.total, u2.flag_count, u3.not_flag_count 
from users u1


join (
select current_login_ip, count(*) as flag_count
from users where flag_status!=0 and id in (
select member_id from attendances 
where status_code=1 and id>@amonth and activity_type_code=101
or    status_code=1 and id>@amonth and activity_type_code=61

)

or email like "%FRAUD%" and id in (
select member_id from attendances 
where status_code=1 and id>@amonth and activity_type_code=101
or    status_code=1 and id>@amonth and activity_type_code=61

)
group by current_login_ip) u2


join (
select current_login_ip, count(*) as not_flag_count
from users where flag_status=0 and email not like "%FRAUD%" and id in (
select member_id from attendances 
where status_code=1 and id>@amonth and activity_type_code=101
or    status_code=1 and id>@amonth and activity_type_code=61

)
group by current_login_ip) u3


join (
select current_login_ip, count(*) as total
from users where id in (
select member_id from attendances 
where status_code=1 and id>@amonth and activity_type_code=101
or    status_code=1 and id>@amonth and activity_type_code=61

)
group by current_login_ip) u4


on  u1.current_login_ip=u2.current_login_ip 
and u1.current_login_ip=u3.current_login_ip 
and u1.current_login_ip=u4.current_login_ip 

group by u1.current_login_ip having u4.total>1 order by u4.total desc limit 50;