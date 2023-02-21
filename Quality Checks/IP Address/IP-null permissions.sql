select u1.id, u1.current_login_ip, u4.total, u2.flag_count, u3.not_flag_count 
from users u1


join (
select current_login_ip, count(*) as flag_count
from users where flag_status!=0 and id in (
select member_id from attendances 
where status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=0 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Facebook
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=11 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- RunKeeper
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Jawbone
select user_id from permissions where api_service_id=31 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Fitbit
select user_id from permissions where api_service_id=41 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Moves
select user_id from permissions where api_service_id=51 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MapMyFitness
select user_id from permissions where api_service_id=61 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MyFitnessPal
select user_id from permissions where api_service_id=71 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- iOS Step Tracker
select user_id from permissions where api_service_id=77 and write_permission is null and deleted_at is NULL)
    
)

or email like "%FRAUD%" and id in (
select member_id from attendances 
where status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=0 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Facebook
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=11 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- RunKeeper
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Jawbone
select user_id from permissions where api_service_id=31 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Fitbit
select user_id from permissions where api_service_id=41 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Moves
select user_id from permissions where api_service_id=51 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MapMyFitness
select user_id from permissions where api_service_id=61 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MyFitnessPal
select user_id from permissions where api_service_id=71 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- iOS Step Tracker
select user_id from permissions where api_service_id=77 and write_permission is null and deleted_at is NULL)
    


)
group by current_login_ip) u2


join (
select current_login_ip, count(*) as not_flag_count
from users where flag_status=0 and email not like "%FRAUD%" and id in (
select member_id from attendances 
where status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=0 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Facebook
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=11 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- RunKeeper
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Jawbone
select user_id from permissions where api_service_id=31 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Fitbit
select user_id from permissions where api_service_id=41 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Moves
select user_id from permissions where api_service_id=51 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MapMyFitness
select user_id from permissions where api_service_id=61 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MyFitnessPal
select user_id from permissions where api_service_id=71 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- iOS Step Tracker
select user_id from permissions where api_service_id=77 and write_permission is null and deleted_at is NULL)
    


)
group by current_login_ip) u3


join (
select current_login_ip, count(*) as total
from users where id in (
select member_id from attendances 
where status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=0 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Facebook
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- ???
select user_id from permissions where api_service_id=11 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- RunKeeper
select user_id from permissions where api_service_id=21 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Jawbone
select user_id from permissions where api_service_id=31 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Fitbit
select user_id from permissions where api_service_id=41 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- Moves
select user_id from permissions where api_service_id=51 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MapMyFitness
select user_id from permissions where api_service_id=61 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- MyFitnessPal
select user_id from permissions where api_service_id=71 and write_permission is null and deleted_at is NULL)

   or status_code=1 and id>@ayear and member_id in (

-- iOS Step Tracker
select user_id from permissions where api_service_id=77 and write_permission is null and deleted_at is NULL)
    


)
group by current_login_ip) u4


on  u1.current_login_ip=u2.current_login_ip 
and u1.current_login_ip=u3.current_login_ip 
and u1.current_login_ip=u4.current_login_ip 

group by u1.current_login_ip having u4.total>1 order by u4.total desc limit 50;