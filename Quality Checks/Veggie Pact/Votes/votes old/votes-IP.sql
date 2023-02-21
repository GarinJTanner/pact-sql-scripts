-- set @id=(select id from attendances where id>495000000 and created_at>DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);

select v.user_id, count(*) as vote_count, u1.current_ip_count
from votes v

join (
select id, count(current_login_ip) as current_ip_count 
from users where id in (select member_id from attendances where id>@id and activity_type_code=201 and status_code=1)
group by current_login_ip) u1

on v.user_id=u1.id and v.user_id in (select member_id from attendances where id>@id and activity_type_code=201 and status_code=1)
group by v.user_id having vote_count>10000 and u1.current_ip_count>5 limit 1
