select u.id, u.current_login_ip, count(*) as IP_count, v.count
from users u

join(
select user_id, count(*) as count 
from votes 
group by user_id having count(*)>100000) v

on u.id=v.user_id 
group by u.current_login_ip having count(*)>1
