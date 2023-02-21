select id, flag_status, email, current_login_ip, count(*) from users 
where flag_status=0 and id in (select member_id from attendances where id>@amonth and status_code=1)
group by current_login_ip having count(*)>3 order by count(*) desc limit 500;